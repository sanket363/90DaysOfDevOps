# Use an existing image as the base image
FROM ubuntu:18.04

# Update the package repository
RUN apt-get update

# Install Apache web server
RUN apt-get install -y apache2

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the local directory to the image
COPY . .

# Expose port 80 to allow connections to the Apache web server
EXPOSE 80

# Start the Apache web server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]