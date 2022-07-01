FROM ubuntu:kinetic

ARG username=ansible

RUN apt-get update; \
    apt install -y gcc python3 libkrb5-dev openssh-client openssh-server sshpass iputils-ping iproute2 git; \
    apt install -y python3-pip;

RUN pip3 install --upgrade pip; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm[credssp]; \
    pip3 install requests; \
    pip3 install paramiko; \
    python3 -m pip install ansible;

RUN useradd -m ${username};

USER ${username}
WORKDIR /home/${username}
