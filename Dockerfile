FROM debian:latest
RUN apt-get update  && apt-get upgrade -y && apt install -y sudo 
RUN apt install -y cron
RUN adduser --disabled-password --gecos '' nonroot
RUN adduser nonroot sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER nonroot

