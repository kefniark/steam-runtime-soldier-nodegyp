FROM registry.gitlab.steamos.cloud/steamrt/soldier/sdk:latest

WORKDIR /app

## Update OS
RUN apt update -y && apt install -y software-properties-common && apt install -y curl build-essential

# Install Node 16.x
COPY setup_node_16 .
RUN cat setup_node_16 | bash
RUN apt-get install -y nodejs

# Install node-gyp
RUN npm install -g electron-rebuild node-gyp
