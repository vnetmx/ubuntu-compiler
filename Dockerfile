FROM ubuntu

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install build-essential git automake


