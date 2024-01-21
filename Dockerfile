FROM node:latest as builder

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app/

RUN npm run build

# Second Stage - the production environment alpine 

FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

