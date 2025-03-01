# Use the official NGINX image as a base
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default NGINX HTML files
RUN rm -rf ./*

# Copy website files (HTML, CSS, JS, assets)
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]