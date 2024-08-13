# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# RUN apk add --no-cache gettext
# RUN apk add moreutils

COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copy the HTML file into the Nginx server's default directory
COPY index.html /usr/share/nginx/html/index.html

# COPY entrypoint.sh /entrypoint.sh


# Expose port 80 to access the server from outside the container
EXPOSE 80

# RUN chmod +x /entrypoint.sh

# Set the entrypoint to your script
# ENTRYPOINT ["/entrypoint.sh"]

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

#use env variables and run nginx
# CMD ["sh", "-c", "envsubst '$BACKEND_URL' < /usr/share/nginx/html/index.html | sponge /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]

