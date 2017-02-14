#!/bin/bash
sudo yum update -y && sudo yum -y install git
git clone https://github.com/jstrassburg/environ-api
cd environ-api
aws configure set s3.signature_version s3v4
aws s3 cp s3://my-bucket/my-secrets.sh .
virtualenv .venv
source .venv/bin/activate
source secrets.sh
pip install -r requirements.txt
python app.py
