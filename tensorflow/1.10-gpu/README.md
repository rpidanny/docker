# Tensorflow 1.8 GPU

## Build image

`docker build -t rpidanny/tf1.10-gpu .`

## Pull from Docker hub

`docker pull rpidanny/tf1.10-gpu`

## Usage

Change directory to your project directory, than run in the interactive mode:

`nvidia-docker run -it -p 9001:9001 -v=$(pwd):$(pwd) --workdir=$(pwd) --rm rpidanny/tf1.10-gpu`
