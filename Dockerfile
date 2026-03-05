# Use Python 3.8 base image
FROM python:3.8-slim

# Set working directory inside container
WORKDIR /app

# Copy app files
COPY app.py .
COPY test_app.py .

# Install pytest
RUN pip install pytest

# Run tests by default (just for demo)
CMD ["pytest"]
