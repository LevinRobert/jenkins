#!/bin/bash
cd /home/ec2-user/my-python-app/
sudo pkill -f levin.py || true
nohup python3 levin.py > app.log 2>&1 &
