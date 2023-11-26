FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container's working directory
COPY . /app

# Install project dependencies
RUN pip3 install -r requirements.txt

# Run the main.py script when the container starts
CMD ["python3", "app.py"]
