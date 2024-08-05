# Use the official Ubuntu base image
FROM ubuntu:latest

# Install nginx and other necessary packages
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Copy the index.html file into the nginx directory
COPY index.html /var/www/html/index.html

# Expose port 80 to access the web server
EXPOSE 80

# Set the entrypoint to start nginx in the foreground
ENTRYPOINT ["nginx", "-g", "daemon off;"]

