FROM nginx:stable-alpine
LABEL maintainer="Cody Dacosta - codydacosta@gmail.com"

RUN rm -rf /usr/share/nginx/html/*
COPY public/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
