# Use the official Tomcat base image
FROM tomcat:latest

# Create a directory within the container to store the HTML page
RUN mkdir -p /var/www/html

# Copy the index.html file from the current directory into the container
COPY project/index.html /var/www/html

# Expose port 8080 (default Tomcat port)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
