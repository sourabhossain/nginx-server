FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install
COPY . .
EXPOSE 3000

RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["sh", "-c", "nginx -g 'daemon off;' & node app.js"]
