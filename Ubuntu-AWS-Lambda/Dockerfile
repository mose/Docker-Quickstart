#
# Docker file for setting up a development environment for coding for Serverless applications
#

# Pull base image.
FROM ubuntu:16.04

# Install basic OS tools
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && apt-get install -y --no-install-recommends apt-utils && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git man unzip vim wget && \
  apt-get install -y python-pip && \ 
  apt-get install -y npm && \
  rm -rf /var/lib/apt/lists/* 


# Install Node
RUN \
  npm install -g n && \
  n 6.10.3 

# Install node global packages
RUN \
  npm install -g serverless@1.26.1 && \
  npm install -g dotenv@5.0.1

# Install AWS CLI tools
RUN \
  pip install awscli && \
  mkdir ~/.aws && \
  chmod 700 ~/.aws

# Add files.

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
