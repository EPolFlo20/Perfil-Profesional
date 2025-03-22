FROM nginx
# Copia los archivos
COPY Perfil-Profesional/dist /usr/share/nginx/html
#Usa el puerto 80
EXPOSE 80
# Ejecuta Nginx
CMD ["nginx", "-g", "daemon off;"]
