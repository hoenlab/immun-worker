LABEL org.opencontainers.image.source=https://github.com/hoenlab/immun-worker

# Replace everything below this line.

# Use a minimal base image
FROM alpine:latest

# Create a simple script
RUN echo -e '#!/bin/sh\n\necho "Hello, World!"' > /hello.sh

# Make the script executable
RUN chmod +x /hello.sh

# Run the script when the container starts
CMD ["/hello.sh"]
