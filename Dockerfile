# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application into the container
COPY . .

# Set environment variables (optional, move sensitive ones to .env)
ENV PYTHONUNBUFFERED=1

# Specify the command to run your application
CMD ["python", "-m", "lisa.bot"]
