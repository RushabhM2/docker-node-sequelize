FROM node:14

EXPOSE 3001

# installing npm itself, and using the latest version of npm
RUN npm i npm@latest -g

COPY package.json package-lock.json* ./

RUN npm install --no-optional && npm cache clean --force

WORKDIR /opt

COPY . .

CMD ["node", "app/index.js"]