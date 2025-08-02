# Utilise l'image Node.js officielle
FROM node:18

# Crée le dossier de l'app
WORKDIR /app

# Copie les fichiers de l'app
COPY package*.json ./
RUN npm install
COPY . .

# Port d'écoute
EXPOSE 8080

# Commande de démarrage
CMD ["node", "index.js"]
