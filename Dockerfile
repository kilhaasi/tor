FROM ubuntu
RUN apt update
RUN apt -y install tor
EXPOSE 9001
ENTRYPOINT /usr/sbin/tor
