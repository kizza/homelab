# Homelab

My current evolution of homeassistant and services.

### Hardware
Intel i5-4250 NIC 8GM RAM 120GB SSD D54250WYK

### Update homeassistant
docker compose pull homeassistant
docker compose up homeassistant -d
docker image prune -a

### Cloudflare certificates
openssl x509 -outform der -in origin-server.pem -out origin-server.crt

Tunnel configuratoin
https://one.dash.cloudflare.com/{id}/networks/tunnels

In cloudflare, from your domain select SSL/TLS, and from origin server generate a certificate.
https://one.dash.cloudflare.com/{id}/settings/downloads

### Creating mosquitto users
Start mosquitto in allow_anonymouse mode, then create a user
docker exec -it mosquitto mosquitto_passwd -c /mosquitto/config/mqttuser {username}
Then add subsequent users with
docker exec -it mosquitto mosquitto_passwd -b /mosquitto/config/mqttuser {username} {password}
