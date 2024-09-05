# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Specify the command to run the application (adjust as needed)
CMD ["python", "app.py"]