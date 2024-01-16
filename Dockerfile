# Use the official Node.js 20 LTS image
FROM node:20.10.0-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g serve

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["serve", "-s", "build"]
