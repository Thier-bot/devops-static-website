# Image Nginx légère
FROM nginx:alpine

# Copier les fichiers HTML
COPY index.html /usr/share/nginx/html/
COPY index-demo.html /usr/share/nginx/html/

# Copier les dossiers
COPY assets /usr/share/nginx/html/assets
COPY images /usr/share/nginx/html/images

# Copier les fichiers texte
COPY LICENSE.txt /usr/share/nginx/html/
COPY README.txt /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
