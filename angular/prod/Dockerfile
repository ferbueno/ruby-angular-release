#Start with nginx
FROM nginx:1.13-alpine

#Remove original NGINX html
RUN rm -rf /usr/share/nginx/html/*

#Copy dist build to nginx directory
COPY  ui/dist/ruby-angular-ui /usr/share/nginx/html

#Copy custom config to nginx directory
COPY release/angular/prod/nginx.conf /etc/nginx/nginx.conf

#Start NGINX
CMD ["nginx", "-g", "daemon off;"]

#Expose 8080
EXPOSE 8080