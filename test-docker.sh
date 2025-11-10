#!/bin/bash
# Test script for Docker setup

echo "🐳 Testing Docker Setup for Jupyter Notebook"
echo "============================================="
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed."
    echo "Please install Docker Desktop from: https://www.docker.com/products/docker-desktop/"
    exit 1
fi

echo "✅ Docker is installed"
echo ""

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running."
    echo "Please start Docker Desktop and try again."
    exit 1
fi

echo "✅ Docker is running"
echo ""

# Build the Docker image
echo "📦 Building Docker image..."
docker-compose build

if [ $? -ne 0 ]; then
    echo "❌ Failed to build Docker image"
    exit 1
fi

echo "✅ Docker image built successfully"
echo ""

# Start the container
echo "🚀 Starting Jupyter container..."
docker-compose up -d

if [ $? -ne 0 ]; then
    echo "❌ Failed to start container"
    exit 1
fi

echo "✅ Container started successfully"
echo ""

# Wait a moment for Jupyter to start
echo "⏳ Waiting for Jupyter to start..."
sleep 5

# Check if container is running
if docker-compose ps | grep -q "Up"; then
    echo "✅ Container is running"
    echo ""
    echo "🎉 SUCCESS! Jupyter Notebook is ready!"
    echo ""
    echo "📝 Open your browser and go to: http://localhost:8888"
    echo ""
    echo "To stop the container, run: docker-compose down"
else
    echo "❌ Container is not running properly"
    echo ""
    echo "Checking logs..."
    docker-compose logs
    exit 1
fi
