# Docker Alpine MongoDB

This repository contains Dockerfile for [MongoDB 3.4](https://www.mongodb.org)
container, based on the Alpine 3.6 image.

**Author** 

* Updated By: [Shikhir Singh](http://www.shikhir.com/)

## Install

**Dependencies**

* You need [Docker](https://docker.com) to be installed.

**Procedure**

To download this image from the public docker hub:

	$ docker pull shikhir/alpine-mongodb

To re-build this image from the dockerfile:

	$ docker build -t shikhir/alpine-mongodb .

## Usage

To run `mongod`:

	$ docker run -d --name mongo -p 27017:27017 shikhir/alpine-mongodb

You can also specify the database repository where to store the data
with the volume -v option:

    $ docker run -d --name mongo -p 27017:27017 \
	  -v /somewhere/onmyhost/mydatabase:/data/db \
	  shikhir/alpine-mongodb

To run a shell session:

    $ docker exec -ti mongo bash

To use the mongo shell client:

	$ docker exec -ti mongo mongo

The mongo shell client can also be run its own container: 

	$ docker run -ti --rm --name mongoshell monogo host:port/db

## Licence

Apache 2.0