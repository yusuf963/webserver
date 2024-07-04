#!/bin/bash
yum update -y
yum install -y python3 python3-pip python3-setuptools
python3 -m pip install flask
mkdir /website
cd /website
curl https://ws-assets-prod-iad-r-iad-ed304a55c2ca1aee.s3.us-east-1.amazonaws.com/5081e54f-23a6-4c6f-9698-fe4d275718b3/flask_website.zip -o /website/unicorn_rentals.zip
unzip unicorn_rentals.zip
chmod +700 unicornrentalswebserver.py
./unicornrentalswebserver.py