#!/bin/zsh

USERNAME="blackhat13"
PASSWORD="admin123"

sudo adduser --disabled-password --gecos "" "$USERNAME"
echo "$USERNAME:$PASSWORD" | sudo chpasswd
sudo usermod -aG sudo "$USERNAME"

echo "✅ User '$USERNAME' created with sudo rights."
