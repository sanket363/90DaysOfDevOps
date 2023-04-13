#!/bin/bash

# Install Apache
sudo yum update -y
sudo yum install httpd -y

# Start Apache
sudo systemctl start httpd

# Create website
echo "<html><body><h1>Welcome to my website Great to meet you</h1></body></html>" > /var/www/html/index.html

sudo systemctl restart httpd

# Make sure Apache starts automatically on reboot
sudo systemctl enable httpd
