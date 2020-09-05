FROM node:12.16-alpine

WORKDIR /app/

ADD package.json .
RUN yarn install --production=true
ADD src ./src

CMD ["yarn", "start"]
expose 3000