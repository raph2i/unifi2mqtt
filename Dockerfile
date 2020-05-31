FROM node
WORKDIR /unifi2mqtt
COPY package*.json ./
RUN yarn install

COPY . .

USER nobody
CMD node index.js
#pass arguments like docker run -e "insecure=true" -e "unifi-password=supersekrit" ...
