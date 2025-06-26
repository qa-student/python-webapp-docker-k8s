# Use the official Python image
FROM python:3.13-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Set the command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]