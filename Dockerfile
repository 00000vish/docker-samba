FROM alpine:latest

RUN apk add samba

WORKDIR /storage
RUN chmod 0777 /storage

RUN adduser --system storage
RUN (echo soivjdfvie; echo soivjdfvie) | smbpasswd -a storage

COPY ./smb.conf /etc/samba/smb.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 445

CMD ["/start.sh"]
