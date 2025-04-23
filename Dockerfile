# Use the official Nginx image from Docker Hub as the base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html (default directory for Nginx to serve HTML)
WORKDIR /usr/share/nginx/html

# Copy all the local files (your portfolio files) into the Nginx web server directory
COPY . /usr/share/nginx/html

# Expose port 80 so you can access your portfolio over the web
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
