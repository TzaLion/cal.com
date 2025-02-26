# Basis-Image
FROM node:18

# Arbeitsverzeichnis setzen
WORKDIR /app

# Abhängigkeiten installieren
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# App-Dateien kopieren
COPY . .

# Umgebungsvariablen für Next.js aktivieren
ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1

# Build & Start
RUN npm run build
CMD ["npm", "run", "start"]
