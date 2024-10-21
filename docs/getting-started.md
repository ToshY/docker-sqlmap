# Requirements

- 🐋 [Docker](https://docs.docker.com/get-docker/)

## Pull image

```shell
docker pull ghcr.io/toshy/docker-sqlmap:latest
```

## Run container

### 🐋 Docker

Run with `docker`.

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest -h
```

### 🐳 Compose

Create a `compose.yaml` file.

```yaml
services:
  sqlmap:
    image: ghcr.io/toshy/docker-sqlmap:latest
    volumes:
      - ./sqlmap:/.local/share/sqlmap
```

Run with `docker compose`.

```shell
docker compose run -u $(id -u):$(id -g) --rm sqlmap -h
```
