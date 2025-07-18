#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd


echo "Test homework 3 !" | sudo tee /var/www/html/index.html > /dev/null