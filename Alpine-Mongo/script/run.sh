#!/bin/bash

# Start MongoDB
echo "Starting MongoDB..."
/usr/bin/mongod --dbpath /data/mongodb --nojournal &

while ! nc -vz localhost 27017; do sleep 1; done

echo "*********** Creating Demo DB ***********"
mongo demo --eval "db.getSiblingDB('demo');"
echo "*********** Demo DB Created ***********"

echo "*********** Creating demo user with access to demo db ***********"
mongo demo --eval "db.createUser({user:'demo', pwd:'L00pBack', roles:[{role: 'readWrite', db:'demo'}]})"
echo "*********** demo user created ***********"
/usr/bin/mongod --dbpath /data/mongodb --shutdown
/usr/bin/mongod --dbpath /data/mongodb $@