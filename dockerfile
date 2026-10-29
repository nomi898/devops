# SLOW: any code change reinstalls all dependencies
FROM node:26-alpine
WORKDIR /app
COPY . .
RUN npm ci
EXPOSE 3000
CMD ["node", "server.js"]         