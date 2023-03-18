FROM node:14-alpine

WORKDIR /app/server

COPY package.json ./

RUN npm install --production

COPY . .

EXPOSE 8000

CMD ["npm", "start"]
