# Utiliser une image Node.js en tant que base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel votre application s'exécute
EXPOSE 3800

# Commande à exécuter lorsque le conteneur démarre
CMD ["node", "main.js"]
