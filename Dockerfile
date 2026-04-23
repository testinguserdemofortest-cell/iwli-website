FROM nginx:alpine

# Copy website files
COPY . /usr/share/nginx/html/

# Copy nginx configuration (optional, for custom config)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 and 443
EXPOSE 80 443

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
