# Use the official NGINX image as a parent image
FROM nginx:latest

# Remove the default nginx.conf
RUN rm /etc/nginx/nginx.conf

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
