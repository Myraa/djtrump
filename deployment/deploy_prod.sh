#!/bin/sh

ssh -i ubuntu.pem -T ubuntu@ec2-18-217-58-163.us-east-2.compute.amazonaws.com <<EOF
  pwd
  cd /home/ubuntu/djtrump
  pip install -r requirements.txt
  exit
EOF
