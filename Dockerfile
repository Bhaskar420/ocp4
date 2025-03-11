# Use the official Redis image from the Docker Hub
FROM redis:latest

# Copy custom Redis configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6379

# Start Redis server with custom configuration file
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

