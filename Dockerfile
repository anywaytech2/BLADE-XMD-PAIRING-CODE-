FROM node:20-buster

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

ENV PORT=8000

EXPOSE 8000

CMD ["npm", "start"]
