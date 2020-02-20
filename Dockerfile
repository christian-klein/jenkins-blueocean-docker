FROM jenkins/blueocean:lts
USER root
RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh