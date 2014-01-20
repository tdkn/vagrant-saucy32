#!/usr/bin/env bash

CODENAME="saucy"

# Add apt repository for Nginx
#--------------------------------------------------
wget -q http://nginx.org/keys/nginx_signing.key -O- | apt-key add -
(
  echo ""
  echo "## Nginx"
  echo "deb http://nginx.org/packages/mainline/ubuntu/ $CODENAME nginx"
  echo "deb-src http://nginx.org/packages/mainline/ubuntu/ $CODENAME nginx"
  echo ""
) >> /etc/apt/sources.list

# Install essential admin tools
#--------------------------------------------------
apt-get update
apt-get install -y \
  aptitude curl git htop iotop \
  nginx tmux vim xsel zsh

# Change login shell
#--------------------------------------------------
# chsh -s $(which zsh) vagrant

