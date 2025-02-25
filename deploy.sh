#!/bin/bash
# Apagar NGINX y NGROK
sudo systemctl stop nginx
pkill ngrok

# Clonar repositorio
sudo git pull origin main

# Encender NGINX
sudo systemctl start nginx

# Generar URL de NGROK
sudo ngrok http 80 > /dev/null &

# Desplegar la URL de NGROK
sleep 3
URL=$(curl -s http://localhost:4040/api/tunnels | grep -o 'https://[^"]*')
echo "Url= $URL"