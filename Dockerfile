# Étape 1 : Utiliser une image de base Nginx
FROM nginx:latest

# Étape 2 : Copier les fichiers de votre application vers l'image Docker
# Copie des fichiers HTML, CSS et JS dans le répertoire par défaut de Nginx
COPY index.html /usr/share/nginx/html/
COPY CSS /usr/share/nginx/html/CSS/
COPY JS /usr/share/nginx/html/JS/

# Étape 3 : Ajouter la configuration personnalisée
COPY default.conf /etc/nginx/conf.d/default.conf

# Étape 4 : Ajouter le script de démarrage
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Étape 5 : Exposer le port 8080
EXPOSE 8080

# Étape 6 : Utiliser le script de démarrage
CMD ["/start.sh"]



# Nginx expose le port 80 par défaut
#EXPOSE 80

# Démarre le serveur Nginx
#CMD ["nginx", "-g", "daemon off;"]
