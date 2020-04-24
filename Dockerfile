# Set the base image to use for subsequent instructions
FROM python:3.9.0a5-alpine3.10

# Add metadata to an image 
LABEL app="python_server"

# Set the working directory for any subsequent ADD, COPY, CMD, ENTRYPOINT, 
# or RUN instructions that follow it in the Dockerfile
WORKDIR /usr/src/app/


# Copy files or folders from source to the dest path in the image's filesystem.
COPY . /usr/src/app/

# install dependencies
RUN pip3 install -r requirements.txt

# Define the network ports that this container will listen on at runtime.
EXPOSE 3000

# Configure the container to be run as an executable.
CMD ["python", "src/server_python.py"]
