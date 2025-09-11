# Use official Python image
FROM python:3.11-slim

# Set work directory inside container
WORKDIR /app

# Copy app code
COPY app.py .

# Install dependencies
RUN pip install fastapi uvicorn

# Expose port 8000
EXPOSE 8000

# Start the FastAPI app with uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
