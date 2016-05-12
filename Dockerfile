FROM ubuntu:16.04
MAINTAINER Andrey Gorelov <ekonomizer@gmail.com>

RUN apt-get update && apt-get install -y golang && apt-get install -y git
RUN mkdir -p /home/ekonomizer/gosrc/src
ENV GOPATH /home/ekonomizer/gosrc
ADD ./run_app /home/ekonomizer/gosrc
WORKDIR /home/ekonomizer/gosrc

