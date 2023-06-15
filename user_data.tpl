#!/bin/bash

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hi, Hello World from $(hostname -f)" > /var/www/html/index.html