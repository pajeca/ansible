FROM debian:bullseye-slim

RUN apt-get update; \
    apt install -y gcc python3 libkrb5-dev openssh-client openssh-server sshpass iputils-ping iproute2; \
    apt install -y python3-pip; \

RUN pip3 install --upgrade pip; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm[credssp]; \
    pip3 install requests; \
    python3 -m pip install ansible; \
