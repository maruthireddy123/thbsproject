# Use a lightweight official Nginx base image
FROM public.ecr.aws/nginx/nginx:alpine

# Remove the default nginx web files
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend files into the nginx web root
COPY origin/ /usr/share/nginx/html

# Expose default port
EXPOSE 80

# Start nginx (default CMD in nginx image is fine)