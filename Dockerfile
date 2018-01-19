# This is a comment
FROM centos:7
MAINTAINER shawn chen <cxwshawn@yeah.net>
RUN yum install -y git
RUN yum install -y emacs
RUN yum install -y gcc
RUN yum install -y go

# RUN cd ~
# RUN git clone https://github.com/golang/go.git

# ADD /root/go /root/go
# expose port
EXPOSE 4001 2379 2380 7001
# the command to run

RUN top
