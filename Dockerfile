FROM python:3.10-slim

WORKDIR /app

# Install basic tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy certs (simulating enterprise CA handling)
COPY certs/ /usr/local/share/ca-certificates/
RUN update-ca-certificates || true

CMD ["bash"]
