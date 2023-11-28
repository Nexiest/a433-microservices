FROM node:18-alpine

WORKDIR /src

COPY package*.json ./

RUN npm install

ENV NODE_ENV=production

RUN npm ci

COPY . .

# Mengekspos port 3000 untuk dapat diakses dari luar container
EXPOSE 3000

CMD ["npm", "start"]