FROM nginx:alpine
COPY . /usr/share/nginx/html
# Fix for Render - make nginx listen on 10000
RUN sed -i 's/80/10000/g' /etc/nginx/conf.d/default.conf
EXPOSE 10000
CMD ["nginx", "-g", "daemon off;"]
