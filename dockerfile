# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the HTML file to the Nginx default html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
