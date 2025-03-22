FROM arangodb:latest

# Expose the default ArangoDB ports
EXPOSE 8529

# Set environment variables (you can override these)
ENV ARANGO_ROOT_PASSWORD=admin
ENV ARANGO_ROOT_PASSWORD=rootpassword

# Default command
CMD ["arangod"]



