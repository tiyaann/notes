#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chmod 0777 /var/www/html
aws s3 cp s3://<your-bucket-name>/my-app.zip .
unzip my-app.zip -d /var/www/html