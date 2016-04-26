FROM ubuntu:14.04

MAINTAINER wuwuyun1989@gmail.com

RUN apt-get -y update && apt-get install -y python-dev python python-pip && pip instsall flask

ADD flask /opt/flask

WORKDIR /opt/flask

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["run.py"]
