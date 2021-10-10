# Docker image to run Electron/NodeJS on SteamRT

Build electron and node application in Steam Runtime Soldier (Ubuntu 18.04)

* Similar to https://github.com/prebuild/docker-images#centos7-devtoolset7
* Based on [Steam Runtime Soldier](https://gitlab.steamos.cloud/steamrt/steamrt/-/blob/steamrt/soldier/README.md)
* Design to build electron node native for linux with node-gyp and electron-rebuild

## Links
* [Github](https://github.com/kefniark/steam-runtime-soldier-nodegyp)
* [Docker Hub](https://hub.docker.com/r/kefniark/steamrt-soldier-nodegyp)

## Usage
```Dockerfile
FROM kefniark/steamrt-soldier-nodegyp:latest
WORKDIR /app

# Install deps
RUN npm install --global yarn

# Copy code
COPY . .

# Install / Build (run your code)
RUN yarn install --frozen-lockfile
RUN yarn build
```

## Run

```sh
docker build -t kefniark/steamrt-soldier-nodegyp:latest .
docker push kefniark/steamrt-soldier-nodegyp:latest
```

## Test

```sh
docker compose up --build
```