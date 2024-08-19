FROM node:19.9.0

WORKDIR /src

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

CMD [ "npm", "start" ]