# Use a minimal base image
FROM alpine:latest

# Only keep the line below, replace everything else
LABEL org.opencontainers.image.source=https://github.com/hoenlab/immun-worker

# Create a simple script
RUN echo -e '#!/bin/sh\n\necho "Hello, World!"' > /hello.sh

# Make the script executable
RUN chmod +x /hello.sh

# Run the script when the container starts
CMD ["/hello.sh"]
