FROM alpine:latest

RUN apk add samba

WORKDIR /storage
RUN chmod 0777 /storage

RUN adduser --system $USERNAME
RUN (echo $PASSWORD; echo $PASSWORD) | smbpasswd -a $USERNAME

COPY ./smb.conf /etc/samba/smb.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 445

CMD ["/start.sh"]
