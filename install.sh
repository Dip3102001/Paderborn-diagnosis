#!/bin/bash

# Update package lists
sudo apt update

# Install GNU Octave
sudo apt install -y octave

# Install Python dependencies
pip install -r requirements.txt