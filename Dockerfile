FROM alpine:latest

ARG USERNAME=storage
ENV USERNAME=${USERNAME}

ARG PASSWORD=T6j2Qz@q
ENV PASSWORD=${PASSWORD}

RUN apk add samba

WORKDIR /storage
RUN chmod 0777 /storage

COPY ./smb.conf /etc/samba/smb.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

EXPOSE 445
