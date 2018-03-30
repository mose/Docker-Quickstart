# Docker AWS Lambda Development Environment

This repository contains Dockerfile for creating a development environment for [AWS Lambda](https://aws.amazon.com/lambda/)
container, based on the Ubuntu image. The AWS CLI and the Serverless framework are installed. 

**Author** 

* Updated By: [Shikhir Singh](http://www.shikhir.com/)

## Install

**Dependencies**

* You need [Docker](https://docker.com) to be installed.

**Procedure**

To download this image from the public docker hub:

	$ docker pull shikhir/aws-lambda-nodejs

To re-build this image from the dockerfile:

	$ docker build -t shikhir/aws-lambda-nodejs .

## Usage

You will need to do your development inside the container while you set a bind mount to your serverless source files:

	$ docker container run --name aws-serverless -it --rm --hostname=docker  -v /full/path/to/serverless/src:/root/myapp/ shikhir/aws-lambda-nodejs

If you already have your AWS credentials installed locally, you can bind mount to both your serverless source directory and your .aws credentials directory
	$ docker container run --name aws-serverless -it --rm --hostname=docker  -v "/full/path/to/serverless/src:":/root/myapp -v "/Users/username/.aws":/root/.aws shikhir/aws-lambda-nodejs
	
## Licence

Apache 2.0