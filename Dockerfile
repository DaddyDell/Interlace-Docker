FROM ubuntu:latest
MAINTAINER Rod Chubb <rodchubb@uat.edu> Cord <corruzew@uat.edu> Brandon <braamund@uat.edu>

COPY projectFiles /projectFiles/
COPY ./command.sh /

RUN apt-get update && apt-get install -y nmap nikto python3 python3-setuptools ca-certificates


RUN cd projectFiles; python3 setup.py install
ENTRYPOINT [ "/command.sh" ]


