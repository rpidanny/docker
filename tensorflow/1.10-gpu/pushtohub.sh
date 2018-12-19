#!/bin/sh
IMAGE=tf1.10-gpu:latest
docker login
# docker tag $IMAGE rpidanny/$IMAGE
docker push rpidanny/$IMAGE