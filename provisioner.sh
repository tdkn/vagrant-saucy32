#!/usr/bin/env bash

# Install essential admin tools
apt-get update
apt-get install -y \
  aptitude curl git htop \
  tmux vim xsel zsh

# Change login shell
chsh -s $(which zsh) vagrant

