# Installs Mongo and Git
FROM alpine:3.6
MAINTAINER Shikhir Singh <shikhir@gmail.com>

USER root


# there is a problem, remove the version from mongodb
RUN \
apk update && \
apk add --update bash && \
apk add --no-cache mongodb==3.4.4-r0 && \ 
rm /usr/bin/mongoperf


VOLUME ["/data/mongodb"]

ADD script /script
RUN chmod +x /script/*.sh

ENTRYPOINT /script/run.sh


# Installing Git
#RUN apt-get update && apt-get install -y sudo && \
#  sudo apt-get -y install unzip git-core wget

#RUN mongo demo --eval 'db.createUser({user:"demo", pwd:"L00pBack", roles:[{role: "readWrite", db:"demo"}]})'
#RUN mongo demo --eval "db.getSiblingDB('demo');"
#RUN mongo demo --eval "db.createUser({user:'demo', pwd:'L00pBack', roles:[{role: 'readWrite', db:'demo'}]})"

EXPOSE 27017:27017