FROM ubuntu:14.04
MAINTAINER Barend Fouché van Rooyen
EXPOSE 80
RUN apt-get update && apt-get upgrade -y ;\
sudo apt-get install -y python3.4-venv ;\
python3 -m venv /venv ;\
. /venv/bin/activate ;\
pip install django==1.9.2 ;\
mkdir /app ;\
deactivate
