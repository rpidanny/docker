#!/bin/sh
IMAGE=tf1.8-gpu
docker login
# docker tag $IMAGE rpidanny/$IMAGE
docker push rpidanny/$IMAGE