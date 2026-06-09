# Use official Nginx image
FROM nginx:alpine

# Copy your single HTML file into Nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 (App Engine flexible expects 8080)
EXPOSE 8080

# Override default Nginx config to listen on 8080
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf
