FROM node:20-alpine

RUN apk add --no-cache git ffmpeg bash

RUN git clone https://github.com/lolanxer/Luffy /root/bot/

WORKDIR /root/bot/

RUN npm install --legacy-peer-deps
RUN npm install sqlite3

CMD ["npm", "start"]
