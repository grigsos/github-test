
FROM gitpod/workspace-python-3.12

USER gitpod
RUN sudo apt-get update && \
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    sudo apt-get update && \
    sudo apt-get install -y docker-ce

RUN sudo usermod -aG docker gitpod

RUN sudo apt-get install -y python3-pip

RUN pip3 install flake8 pytest

CMD ["bash"]
