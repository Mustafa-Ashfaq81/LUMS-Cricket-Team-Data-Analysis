#!/bin/bash

# Update package lists and install necessary packages
sudo apt-get update
sudo apt-get install -y git openjdk-11-jdk maven docker.io

# Pull the required Docker image
sudo docker pull shuaiwang516/confuzz-image:AUG21

# Download the docker-fuzz.sh script
wget https://mir.cs.illinois.edu/~swang516/confuzz/docker-fuzz.sh -O ~/docker-fuzz.sh

# Make the script executable
chmod +x ~/docker-fuzz.sh
