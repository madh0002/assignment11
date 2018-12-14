#Dockerfile for assignment 11
FROM nginx 
LABEL maintainer="Madhu Venkat madh0002@stthomas.edu"
EXPOSE 80
COPY docker/html/* /usr/share/nginx/html/
