FROM jenkins:2.19.1

RUN apt-get update -y

RUN apt-get install -y apt-transport-https ca-certificates && \
        apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
        touch /etc/apt/sources.list.d/docker.list && \
        echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list

RUN apt-get update -y

RUN apt-get install docker-engine && \
        service docker start

RUN curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose && \
        chmod +x /usr/local/bin/docker-compose

