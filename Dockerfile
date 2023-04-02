# Utilizando a imagem oficial de Node.js como a imagem base 
FROM node:14-alpine

#Instalando git
RUN apk add --no-cache git

#Copiando os arquivos do projeto e suas dependências
COPY . .

# Tornando a porta 3000 aberta para fora do container
EXPOSE 3000

# Rodando app.js quando o container se iniciar
CMD ["npm", "start"]
