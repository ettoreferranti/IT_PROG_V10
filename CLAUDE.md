# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Jupyter notebook-based educational repository for teaching Python File I/O concepts. The repository is designed for the lecture "IT_PROG V10: File I/O" at Zurich University of Applied Sciences (ZHAW).

**Key Structure:**
- `notebook.ipynb` - Main working notebook with exercises and solutions
- `notebook_master.ipynb` - Read-only golden copy (permissions: 444)
- Supporting data files: `restaurants.txt`, `test/example.txt`, `repo_qr_code.png`
- Docker setup for containerized Jupyter environment

## Running the Notebook

### Docker (Recommended)
```bash
# Start Jupyter notebook server
docker-compose up

# Access at http://localhost:8888

# Stop container
docker-compose down
```

### Local Jupyter
```bash
jupyter notebook notebook.ipynb
```

## Important: Golden Copy Protection System

This repository uses a dual-protection system to preserve the original notebook:

### 1. Read-Only Master File
- `notebook_master.ipynb` has 444 permissions (read-only)
- This prevents accidental edits during lectures
- **NEVER edit this file directly** unless explicitly restoring or updating the golden copy

### 2. Git Tag: `v1.0-golden`
- Tagged version of the original notebook
- Can be used to restore the notebook at any time

### Restoring the Working Notebook

```bash
# Option 1: Copy from master
cp notebook_master.ipynb notebook.ipynb

# Option 2: Restore from git tag
git show v1.0-golden:notebook.ipynb > notebook.ipynb
```

### Modifying the Master Copy (Rare)

Only do this when intentionally updating the golden copy:

```bash
# Remove read-only protection
chmod 644 notebook_master.ipynb

# Make changes...

# Restore read-only protection
chmod 444 notebook_master.ipynb
```

## Working with the Notebook

The notebook contains 9 exercises teaching File I/O concepts:

**Core Exercises (1-6):**
- File operations with `open()`, `write()`, `close()`
- File buffering and the importance of closing files
- Context managers (`with` blocks)
- Working with file paths using `os` module
- Reading files and processing data
- Exception handling with `try-except`

**Bonus Exercises (7-9):**
- Append mode and file modes
- Word/line counting
- Data processing and statistics

**Files Created During Exercises:**
Students create these files: `greeting.txt`, `my_list.txt`, `not_closed.txt`, `log.txt`, `counts.txt`, `numbers.txt`, `statistics.txt`

## Architecture Notes

### Docker Configuration
- Based on `jupyter/minimal-notebook:latest`
- Runs without authentication (token/password disabled)
- Volume mounts entire repository to `/home/jovyan/work`
- Port 8888 exposed for Jupyter web interface

### Solution Cells
The notebook contains hidden solution cells for instructors. When editing the notebook:
- Solutions are embedded as hidden cells with metadata
- Preserve cell metadata when making changes
- Solutions should remain hidden by default for student use

## Git Workflow

The repository has an unusual file path due to iCloud sync:
- Path: `/Users/ettore/Library/Mobile Documents/com~apple~CloudDocs/Code/Lecture`
- Main branch: `main`
- **Never force push** or modify git history, especially the `v1.0-golden` tag
