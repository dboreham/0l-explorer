FROM node:16-alpine
WORKDIR /code
COPY . .

ENV NEXT_TELEMETRY_DISABLED 1

ENV NODE_ENV production

RUN yarn

RUN yarn next build

EXPOSE 1010

CMD [ "node", "index.js" ]