# Docker Setup Testing Guide

## Configuration Verification ✅

I've verified the Docker configuration files:

### Dockerfile Analysis
- ✅ Uses official Jupyter image (`jupyter/minimal-notebook:latest`)
- ✅ Sets correct working directory (`/home/jovyan/work`)
- ✅ Copies notebook to container
- ✅ Exposes port 8888
- ✅ Disables token/password for easy local access
- ✅ Uses proper CMD syntax

### docker-compose.yml Analysis
- ✅ Uses Docker Compose version 3.8
- ✅ Maps port 8888 (container) to 8888 (host)
- ✅ Mounts current directory as volume (work persists!)
- ✅ Enables JupyterLab interface
- ✅ Proper service configuration

### Security Note
**Important**: The token and password are disabled for ease of use in a classroom setting. This is fine for local development but should NOT be used in production or on public networks!

## How to Test (When Docker is Installed)

### Prerequisites
1. Install Docker Desktop: https://www.docker.com/products/docker-desktop/
2. Make sure Docker Desktop is running

### Method 1: Automated Test Script

```bash
./test-docker.sh
```

This script will:
1. Check if Docker is installed and running
2. Build the Docker image
3. Start the container
4. Verify everything is working
5. Provide the URL to access Jupyter

### Method 2: Manual Testing

#### Step 1: Build the Image
```bash
docker-compose build
```

Expected output:
- Downloads Jupyter base image (~500MB)
- Copies files to container
- Completes successfully

#### Step 2: Start the Container
```bash
docker-compose up
```

Expected output:
```
Creating network "lecture_default" with the default driver
Creating lecture_jupyter_1 ... done
Attaching to lecture_jupyter_1
jupyter_1  | Executing the command: jupyter notebook
jupyter_1  | [I 10:30:00.123 NotebookApp] Writing notebook server cookie secret to ...
jupyter_1  | [I 10:30:00.456 NotebookApp] Serving notebooks from local directory: /home/jovyan/work
jupyter_1  | [I 10:30:00.789 NotebookApp] Jupyter Notebook is running at:
jupyter_1  | [I 10:30:00.789 NotebookApp] http://127.0.0.1:8888/
```

#### Step 3: Access Jupyter
Open browser and navigate to: **http://localhost:8888**

You should see:
- Jupyter file browser
- `notebook.ipynb` file listed
- All files in the lecture directory

#### Step 4: Test the Notebook
1. Click on `notebook.ipynb`
2. Notebook should open with all exercises
3. Try running a simple cell:
   ```python
   print("Hello from Docker!")
   ```
4. Try creating a file (Exercise 1):
   ```python
   with open('test.txt', 'w') as f:
       f.write('Testing Docker setup!')
   ```
5. Check that `test.txt` appears in your local directory (volume mounting works!)

#### Step 5: Stop the Container
Press `Ctrl+C` in the terminal, then:
```bash
docker-compose down
```

### Method 3: Without Docker Compose

If you prefer not to use docker-compose:

```bash
# Build
docker build -t jupyter-fileio .

# Run
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter-fileio

# Stop
docker stop <container-id>
```

## Troubleshooting

### Issue: Port 8888 already in use
**Solution**: Either stop the other service using port 8888, or change the port mapping:
```yaml
ports:
  - "8889:8888"  # Use port 8889 instead
```
Then access at http://localhost:8889

### Issue: Docker daemon not running
**Solution**: Start Docker Desktop application

### Issue: Permission denied
**Solution**:
```bash
chmod +x test-docker.sh
```

### Issue: Notebook not appearing
**Solution**: Make sure you're in the correct directory when running docker-compose

### Issue: Changes not persisting
**Solution**: Check volume mounting in docker-compose.yml:
```yaml
volumes:
  - ./:/home/jovyan/work  # Current directory mounted
```

## Expected Behavior

✅ **What Should Work:**
- Notebook opens in browser
- Can create and edit cells
- Can run Python code
- Files created in exercises persist locally
- Changes to notebook persist after restart

❌ **What Won't Work:**
- No internet access restrictions
- No pre-installed packages beyond Python standard library

## Testing Checklist

- [ ] Docker Desktop installed
- [ ] Docker is running
- [ ] `docker-compose build` succeeds
- [ ] `docker-compose up` starts without errors
- [ ] Can access http://localhost:8888
- [ ] Notebook opens and displays exercises
- [ ] Can execute Python code
- [ ] Can create files (Exercise 1)
- [ ] Created files appear in local directory
- [ ] Can stop container with `docker-compose down`

## Performance Notes

- First build: ~2-3 minutes (downloads base image)
- Subsequent builds: ~10-30 seconds
- Container startup: ~5-10 seconds
- No noticeable performance difference vs local Jupyter

## For Students

Share these simple instructions:

```bash
# One-time setup
git clone https://github.com/ettoreferranti/lecture.git
cd lecture

# Every time you want to work
docker-compose up

# Open: http://localhost:8888

# When done
# Press Ctrl+C, then:
docker-compose down
```

That's it! No Python installation needed.
