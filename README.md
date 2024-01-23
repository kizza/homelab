Intel i5-4250 NIC 8GM RAM 120GB SSD D54250WYK

openssl x509 -outform der -in origin-server.pem -out origin-server.crt

In cloudflare, from your domain select SSL/TLS, and from origin server generate a certificate.

https://one.dash.cloudflare.com/9ed68ff9dcccfa5d779e82fc9a9c6f9b/settings/downloads


Start mosquitto in allow_anonymouse mode, then create a user
docker exec -it mosquitto mosquitto_passwd -c /mosquitto/config/mqttuser {username}
Then add subsequent users with
docker exec -it mosquitto mosquitto_passwd -b /mosquitto/config/mqttuser {username} {password}
