# Use the official Redis image from the Docker Hub
FROM redis:latest

# Expose the default Redis port
EXPOSE 6379

# Start Redis server
CMD ["redis-server"]


