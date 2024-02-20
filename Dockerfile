FROM node:17-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN npm install

COPY . .

EXPOSE 4000

CMD ["node", "app.js"]