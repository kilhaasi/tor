FROM ubuntu
RUN apt update
RUN apt -y install curl gpg
RUN echo deb https://deb.torproject.org/torproject.org bionic main >> /etc/apt/sources.list
RUN echo deb-src https://deb.torproject.org/torproject.org bionic main >> /etc/apt/sources.list
RUN curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
RUN apt update
RUN apt -y install tor
EXPOSE 9001
ENTRYPOINT /usr/sbin/tor
