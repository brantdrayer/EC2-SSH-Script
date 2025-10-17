#!/bin/bash

# Variables
KEY_PATH="~/.ssh/ec2-private-key.pem"    # Full path to your .pem file
USER="ec2-user"                       # Default user; could be ec2-user for Amazon Linux
EIP="34.231.189.67"           # <-- Replace with your actual Elastic IP

# SSH into the instance
if [ -z "$EIP" ]; then
    echo "❌ Elastic IP not specified. Please edit the script and set EIP."
    exit 1
fi

echo "🔗 Connecting to $EIP ..."
ssh -i "$KEY_PATH" $USER@$EIP
