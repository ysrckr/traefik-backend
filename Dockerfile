FROM node:18.3.0-alpine3.14

# Create app directory
WORKDIR /backend

COPY . .

RUN npm install -g pnpm

RUN npm install -g pm2

RUN pnpm install

CMD ["pnpm", "run", "prod"]

