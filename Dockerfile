# Usar uma imagem base do Node.js
FROM node:14

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o package.json e instalar dependências
COPY package*.json ./
RUN npm install

# Copiar o restante do código
COPY . .

# Expôr a porta que o app vai rodar
EXPOSE 1000

# Definir o comando para rodar o app
CMD ["npm", "start"]
