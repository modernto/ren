FROM ubuntu

RUN apt-get update
RUN apt-get install python3 python3-pip -y

RUN pip3 install flask

COPY . /docker

CMD python3 /docker/web.py 
