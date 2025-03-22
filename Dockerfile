
# the official ArangoDB image from Docker Hub
FROM arangodb:latest

# Set environment variables for ArangoDB
# Set environment variables (you can override these)
ENV ARANGO_ROOT_PASSWORD=admin
ENV ARANGO_ROOT_PASSWORD=my_secure_password  # Set the root password here

# Set a volume for data persistence
VOLUME /var/lib/arangodb3  # This is the default data directory for ArangoDB

# Set permissions for ArangoDB data directory
RUN chown -R arangodb:arangodb /var/lib/arangodb3

# Start ArangoDB as the root user 
USER arangodb

# Expose default ArangoDB ports
EXPOSE 8529 8530

# Start ArangoDB service
CMD ["arangod"]
