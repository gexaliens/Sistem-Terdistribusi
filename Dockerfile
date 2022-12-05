FROM node:latest

RUN mkdir -p /nodejs_docker

WORKDIR /nodejs_docker

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]