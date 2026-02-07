# Image Nginx légère
FROM nginx:alpine

# Copie le frontend dans le dossier public de Nginx
COPY . /usr/share/nginx/html

# Config Nginx: proxy /api vers le backend (yetumia-api:4000)
COPY nginx-default.conf /etc/nginx/conf.d/default.conf

# Expose le port 80
EXPOSE 80
