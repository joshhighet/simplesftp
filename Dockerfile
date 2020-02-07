FROM alpine
MAINTAINER Josh Highet <josh@joshhighet.com>

ENV CONTAINER_VERSION 0.2

# runtime deps
RUN apk update && apk upgrade
RUN apk add --no-cache openssh ncurses git
RUN git clone https://github.com/joshhighet/simplesftp.git
RUN chmod +x /simplesftp/simplesftp.sh
RUN sh /simplesftp/simplesftp.sh --nohands
EXPOSE 22/tcp
