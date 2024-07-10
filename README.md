# docker-samba

A docker image that spins up a samba server.

# Docker Run

```
docker run -e USERNAME=storage PASSWORD=adminadmin -p 445:445 00000vish/docker-samba
```

# Docker Compose

```
services:
  docker-samba:
   image: 00000vish/docker-samba:latest
    container_name: docker-samba
    environment:
      - USERNAME=storage
      - PASSWORD=adminadmin
    ports:
      - 445:445
  restart: unless-stopped
```
