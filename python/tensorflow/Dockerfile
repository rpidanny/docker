FROM ubuntu:18.04
LABEL maintainer "Abhishek Maharjan <rpidanny.abhishek@gmail.com>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    tmux \
    zsh \
    curl \
    git \
    wget \
    nano \
    locales \
    libgtk2.0-dev \
    && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8 && update-locale LANG=en_US.UTF-8

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip install tensorflow-gpu===1.10.0 opencv-python==3.4.2.17 pillow h5py scipy colorama

RUN pip --no-cache-dir install \
    tensorflow===1.0.0 \
    opencv-python \
    Pillow \
    h5py \
    keras_applications \
    keras_preprocessing \
    matplotlib \
    numpy \
    pandas \
    scipy \
    sklearn \
    colorama \
    &&

# RUN ln -s -f /usr/bin/python3 /usr/bin/python

# Tensorboard
EXPOSE 6006

# Extra port for any other applications
EXPOSE 8086