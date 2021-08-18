#!/bin/bash/

echo "Using docker images to build the ELK stack"
echo "Pulling the required images from Docker Hub"

docker pull elasticsearch:7.14.0
docker pull kibana:7.14.0
docker pull logstash:7.14.0


echo "You require more than 4GB Ram to run ELK stack"

echo "Creating Docker Network1"
docker network create --name elknet

echo "Starting ElasticSearch Container"
docker run -itd --name elasticsearch --net elknet -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.14.0

echo "Starting Kibana"
docker run --name kibana --net elknet -p 5601:5601 kibana:7.14.0

echo "Starting Logstash"
docker run -d --name logstash --net elknet logstash:7.14.0


echo "Successfully Installed the required Software"


