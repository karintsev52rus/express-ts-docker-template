FROM node as base

WORKDIR /node-app

COPY package*.json .

RUN npm i

EXPOSE 4000

COPY . .

CMD npm run dev

FROM base as production

ENV NODE_PATH=./build

RUN npm run build
