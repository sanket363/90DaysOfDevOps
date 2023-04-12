#!/bin/bash
cd /home/ec2-user
echo "<html><body><h1>Welcome to my website!</h1></body></html>" > index.html
sudo yum install python3 -y
sudo nohup python3 -m http.server 80 > /dev/null 2>&1 &
