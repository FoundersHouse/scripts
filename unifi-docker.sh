docker create \
  --name=unifi-controller \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MEM_LIMIT=1024M \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -p 8080:8080 \
  -p 8081:8081 \
  -p 8443:8443 \
  -p 8843:8843 \
  -p 8880:8880 \
  -p 6789:6789 \
  -v /etc/unifi/data \
  --restart unless-stopped \
  linuxserver/unifi-controller:arm32v7-latest
docker start -dit --restart unless-stopped unifi-controller