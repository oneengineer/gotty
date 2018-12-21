FROM golang

ENV LANG C.UTF-8

RUN mkdir /app

RUN apt-get update && apt-get -y install wget && apt-get -y install sudo 
RUN apt-get install -y net-tools htop && apt-get install -y tmux

#install package
RUN go get github.com/yudai/gotty
RUN go install -v github.com/yudai/gotty

RUN useradd -ms /bin/bash containeruser

WORKDIR /app/

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

VOLUME /home

ENTRYPOINT ["/app/entrypoint.sh"]
#ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["/go/bin/gotty","--permit-write","--reconnect","bash"]
