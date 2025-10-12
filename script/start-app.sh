#!/bin/bash
cd /home/ec2-user/my-python-app/
pip install -r requirements.txt -t .

nohup python3 levin.py > app.log 2>&1 &
