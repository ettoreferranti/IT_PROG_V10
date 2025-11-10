# File I/O in Python - Exercises

This repository contains exercises for the lecture "IT_PROG V10: File I/O" from Zurich University of Applied Sciences.

## Running the Notebook

You have multiple options to run this notebook:

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

## Features

- 📱 **QR Code Access** - Scan the QR code in the notebook to access the repository
- 📝 **Complete Solutions** - Hidden solution cells for all exercises (for instructors)
- 🐳 **Docker Support** - Run without installing Python locally
- 📚 **Progressive Learning** - Exercises build from basic to advanced concepts

## Topics Covered

- Reading and writing files
- File modes and operations (`'r'`, `'w'`, `'a'`)
- Using `with` blocks for automatic file closing
- Understanding file buffering and why closing files matters
- Working with file paths using `os` module
- Exception handling with `try-except`
- Data processing from files (statistics, word counting)
- Practical applications (restaurant chooser, log files)

## Exercises

The notebook contains **9 exercises** (6 core + 3 bonus):

### Core Exercises

1. **Writing Your First File** - Basic file operations with `open()`, `write()`, and `close()`
2. **Writing Multiple Lines** - Working with loops and multiple writes
2B. **What Happens When Files Aren't Closed?** ⚠️ - Understanding buffering issues
3. **Using the `with` Block** - Context managers for automatic file closing
4. **Working with File Paths** - Using the `os` module for cross-platform paths
5. **Choose a Restaurant** - Reading from files and random selection
6. **Exception Handling - File Not Found** - Using `try-except` for error handling

### Bonus Exercises

7. **Append Mode** - Understanding different file modes and appending data
8. **Word Counter** - Counting lines, words, and characters in files
9. **Process Numbers from a File** - Reading, processing data, and writing statistics

## Repository Contents

### Provided Files
- `notebook.ipynb` - Main exercise notebook with instructions and solutions
- `restaurants.txt` - Sample data for Exercise 5 & 6
- `test/example.txt` - Sample file for Exercise 4
- `repo_qr_code.png` - QR code for easy repository access
- `README.md` - This file
- `Dockerfile` & `docker-compose.yml` - Docker configuration

### Files Created by Students During Exercises
Students will create these files as they work through the exercises:
- `greeting.txt` (Exercise 1 & 3)
- `my_list.txt` (Exercise 2)
- `not_closed.txt` (Exercise 2B)
- `log.txt` (Bonus Exercise 7)
- `counts.txt` (Bonus Exercise 8)
- `numbers.txt` & `statistics.txt` (Bonus Exercise 9)

## Support

For issues or questions, please open an issue on GitHub.

---

**Course:** IT_PROG - Introduction to Programming
**Institution:** Zurich University of Applied Sciences (ZHAW)
