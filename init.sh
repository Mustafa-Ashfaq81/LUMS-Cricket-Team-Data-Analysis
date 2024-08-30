#!/bin/bash
# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y git openjdk-11-jdk maven docker.io

# Set JAVA_HOME environment variable
echo "export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" >> ~/.bashrc
source ~/.bashrc

# Pull the Docker image
sudo docker pull shuaiwang516/confuzz-image:AUG21

# Download the docker-fuzz.sh script
wget https://mir.cs.illinois.edu/~swang516/confuzz/docker-fuzz.sh -O ~/docker-fuzz.sh
sudo chmod +x ~/docker-fuzz.sh
