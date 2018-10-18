FROM nvidia/cuda:9.0-cudnn7-devel
LABEL maintainer "Abhishek Maharjan <rpidanny.abhishek@gmail.com>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3-pip tmux zsh curl git wget nano powerline locales

RUN locale-gen en_US.UTF-8 && update-locale LANG=en_US.UTF-8
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

RUN git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN chsh -s $(which zsh)

RUN pip3 install -U pip

RUN pip install tensorflow-gpu===1.8.0 opencv-python==3.4.2.17
