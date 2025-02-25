#!/ Apagar NGINX y NGROK
sudo systemctl stop NGINX
pkill ngrok

#!/ Clonar repositorio
git pull origin main

#!/ Encender NGINX
sudo systemctl start NGINX

#!/ Generar URL de NGROK
ngrok http 80 > /dev/null &

#!/ Desplegar la URL de NGROK
sleep 3
URL=$(curl -s http://localhost:4040/api/tunnels | grep -o 'https://[^"]*')
echo "Url= $URL"