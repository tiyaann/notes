#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chmod 0777 /var/www/html
sudo echo "<html><h3>Hello World !! from $(hostname -f)</h3></html>" > /var/www/html/index.html
