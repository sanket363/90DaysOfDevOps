# Use the official Alpine image as the base
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary packages or dependencies
RUN apk update && apk add --no-cache bash

# Specify the command to run when the container starts
CMD ["echo", "Hello, World!"]
