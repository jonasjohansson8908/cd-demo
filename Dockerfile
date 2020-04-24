# Download python base image if needed
FROM python:3.9.0a5-alpine3.10

# Label the image
LABEL app="python_server"

# The WORKDIR instruction sets the working directory for any RUN, CMD, 
# ENTRYPOINT, COPY and ADD instructions
WORKDIR /usr/src/app/

# Copy the entire project
COPY . /usr/src/app/

# install dependencies
RUN pip3 install -r requirements.txt

# Set the port where the container listens for connections
EXPOSE 3000

# Run the software contained in the image
CMD ["python", "src/server_python.py"]
