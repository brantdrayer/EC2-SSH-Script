# EC2 SSH Helper Script

A small Bash script to simplify connecting to an AWS EC2 instance via SSH.

## Features

- Automates SSH login to your EC2 instance using a `.pem` key file.
- Prompts if the Elastic IP (EIP) is not set.

## Usage

1. **Clone this repository** (or download the script).  
2. **Edit the script** and set your variables:

```bash
KEY_PATH="~/.ssh/ec2-private-key.pem"  # Full path to your .pem file
USER="ec2-user"                        # Default user; change if needed
EIP="xx.xx.xx.xx"                       # Your EC2 Elastic IP
```

### Make the script executable (if it isn’t already):
```bash
chmod +x connect-ec2.sh
```
Run the script:
```bash
./connect-ec2.sh
```
It will connect you to the specified EC2 instance.

### Requirements
Bash (Linux or macOS; Windows with WSL works too)

An existing EC2 instance with an Elastic IP

Correct permissions on your .pem key file (chmod 400 key.pem)

License
MIT License
