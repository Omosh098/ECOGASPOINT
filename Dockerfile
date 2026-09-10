FROM nginx:alpine
# Delete the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*
# Copy YOUR gas website
COPY . /usr/share/nginx/html/
# Make it work on Render port
RUN sed -i 's/80/10000/g' /etc/nginx/conf.d/default.conf
EXPOSE 10000
CMD ["nginx", "-g", "daemon off;"]
