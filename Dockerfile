FROM lambci/lambda:build-nodejs12.x

ENV PORT=3011

WORKDIR /usr/app

COPY package.json package-lock.json  /usr/app/

RUN npm ci

COPY . .

EXPOSE $PORT

CMD ["npm", "run", "dev"]
