FROM node:14-alpine

WORKDIR /app/client

COPY package.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
