
1. Dockerfile
-------------
# Use official Python image from Docker Hub
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Install required dependencies
RUN apt update && apt install python3 -y && pip install flask

# Copy application source code
COPY app.py .
COPY templates/ templates/

# Expose the application port
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
