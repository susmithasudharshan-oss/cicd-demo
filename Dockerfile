#FROM node:12.2.0-alpine
#WORKDIR app
#COPY . .
#RUN npm install
#RUN npm run test
#EXPOSE 8000
#CMD ["node","app.js"]

FROM node:12.2.0-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 8000
CMD ["node", "app.js"]
