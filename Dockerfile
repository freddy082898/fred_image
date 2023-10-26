# Utiliser l'image Caddy officielle
FROM caddy:2.4.5-alpine


WORKDIR /usr/share/caddy

# Copier les fichiers du site dans le répertoire du conteneur
COPY index.html /usr/share/caddy/index.html

# Copier le Caddyfile dans le répertoire de configuration de Caddy
COPY Caddyfile /etc/caddy/Caddyfile

# Exposer le port 80 pour le trafic HTTP
EXPOSE 80
EXPOSE 443
