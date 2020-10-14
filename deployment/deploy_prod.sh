#!/bin/sh

ssh -i ubuntu.pem ubuntu@ec2-18-217-58-163.us-east-2.compute.amazonaws.com <EOF
  pwd
  cd /home/ubuntu/djtrump
  git clone https://github.com/Myraa/djtrump.git
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
