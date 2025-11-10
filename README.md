# File I/O in Python - Exercises

This repository contains exercises for the lecture "IT_PROG V10: File I/O" from Zurich University of Applied Sciences.

## Running the Notebook

You have three options to run this notebook:

### Option 1: Docker (Recommended - No Installation Required!)

**Prerequisites:**
- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

**Steps:**

1. Clone this repository:
   ```bash
   git clone https://github.com/ettoreferranti/IT_PROG_V10.git
   cd IT_PROG_V10
   ```

2. Run with Docker Compose:
   ```bash
   docker-compose up
   ```

3. Open your browser and go to: [http://localhost:8888](http://localhost:8888)

4. When done, stop the container:
   ```bash
   docker-compose down
   ```

**Alternative Docker command (without docker-compose):**
```bash
docker build -t jupyter-fileio .
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter-fileio
```

### Option 2: Google Colab (No Installation Required!)

Click this link to open the notebook in Google Colab:
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ettoreferranti/IT_PROG_V10/blob/main/notebook.ipynb)

You'll need a Google account, and you can save your own copy to work on.

### Option 3: Binder (No Installation Required!)

Click this badge to launch the notebook in Binder:
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ettoreferranti/IT_PROG_V10/main?filepath=notebook.ipynb)

Note: Binder sessions are temporary and won't save your work.

### Option 4: Local Installation

If you have Python and Jupyter installed locally:

```bash
git clone https://github.com/ettoreferranti/IT_PROG_V10.git
cd IT_PROG_V10
jupyter notebook notebook.ipynb
```

## Topics Covered

- Reading and writing files
- File modes and operations (`'r'`, `'w'`, `'a'`)
- Using `with` blocks for automatic file closing
- Working with file paths using `os` module
- Exception handling with `try-except`
- Practical exercises including a restaurant chooser application

## Exercises

The notebook contains 11 exercises:

1. **Writing Your First File** - Basic file operations
2. **Writing Multiple Lines** - Working with multiple writes
3. **Using the `with` Block** - Context managers
4. **Reading Files Line by Line** - Using `for` loops
5. **Understanding Different Read Methods** - `readline()`, `readlines()`, `read()`
6. **Working with File Paths** - Using the `os` module
7. **Restaurant Chooser** - Main exercise from lecture
8. **Exception Handling** - Handling file errors
9. **Append Mode** - Understanding file modes
10. **Word Counter** - Practical application
11. **BONUS: Interactive Restaurant Manager** - Comprehensive exercise

## Support

For issues or questions, please open an issue on GitHub.

---

**Course:** IT_PROG - Introduction to Programming
**Institution:** Zurich University of Applied Sciences (ZHAW)
