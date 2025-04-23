# Base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy local app.py and requirements.txt to container
COPY app.py /app/
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (change if needed)
EXPOSE 8000

# Default command
CMD ["python", "app.py"]
