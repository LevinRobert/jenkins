 #!/bin/bash
    cd "/home/ec2-user/my-python-app"/
    # Activate virtual environment if used
    # source venv/bin/activate
    pip install -r requirements.txt -t
    sleep 5s
    nohup python3 levin.py > logs.txt 2>&1 &
