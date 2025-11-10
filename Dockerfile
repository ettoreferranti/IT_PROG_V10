# Use official Jupyter minimal notebook image
FROM jupyter/minimal-notebook:latest

# Set working directory
WORKDIR /home/jovyan/work

# Copy the notebook to the container
COPY notebook.ipynb /home/jovyan/work/

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
