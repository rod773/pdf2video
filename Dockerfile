# Use nginx alpine for small image size
FROM nginx:alpine

# Install required packages
RUN apk add --no-cache \
    curl \
    bash

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file to nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Copy a custom nginx config (optional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]