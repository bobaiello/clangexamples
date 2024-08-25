From ubuntu:22.04

WORKDIR /root/.ssh
COPY id_rsa.txt /root/.ssh/id_rsa
COPY id_rsa_pub.txt /root/.ssh/id_rsa.pub
RUN chmod 600 /root/.ssh/id_rsa
RUN chmod 666 /root/.ssh/id_rsa.pub

WORKDIR /usr/src/app/myscripts/httpd
COPY scripts/httpd/* /usr/src/app/myscripts/httpd/

WORKDIR /usr/src/app/myscripts/lamp
COPY scripts/lamp/* /usr/src/app/myscripts/lamp/

WORKDIR /usr/src/app/myscripts/npm
COPY scripts/npm/* /usr/src/app/myscripts/npm/

RUN apt-get update && apt-get install -y dos2unix
WORKDIR /usr/src/app/myscripts/
COPY scripts/* /usr/src/app/myscripts/
RUN dos2unix /usr/src/app/myscripts/*.sh
#RUN dos2unix /usr/src/app/myscripts/*.py

COPY scripts/*.py /usr/src/app/
RUN dos2unix /usr/src/app/*.py

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y ansible

RUN apt-get update && apt-get install -y vim
RUN apt-get update && apt-get install -y git

RUN apt-get update && apt-get install -y iputils-ping
RUN apt-get update && apt-get install -y dos2unix

RUN apt-get update && apt-get -y upgrade
RUN apt-get update && apt-get install -y python3-pip
RUN apt-get update && apt-get install -y build-essential libssl-dev libffi-dev python3-dev

RUN echo "syntax off" >> /root/.vimrc
#RUN /usr/src/app/movehosts.sh

COPY AnsibleInstall.txt .
COPY etc_hosts.txt .
COPY ansible_hosts.txt .
#COPY installStepsPart1.sh .
COPY phpinfo.php .
COPY movehosts.sh .
#COPY myscripts.zip .

EXPOSE 8080
#CMD /bin/bash /usr/src/app/movehosts.sh
