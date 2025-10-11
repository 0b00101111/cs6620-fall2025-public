# Uses an appropriate Python base image
FROM python:3.11

# Set working directory in container
WORKDIR /app

# Copy files from current directory to /app in the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Runs the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
