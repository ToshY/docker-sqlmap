<h1 align="center"> 🕵 docker-sqlmap </h1>

<div align="center">
    <img src="https://img.shields.io/github/actions/workflow/status/toshy/docker-sqlmap/security.yml?branch=main&label=Security%20check" alt="Security check" />
    <br /><br />
    <div>A docker image for <a href="https://github.com/sqlmapproject/sqlmap">sqlmap</a>.</div>
</div>

## 📝 Quickstart

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest
```

## 📜 Documentation

The documentation is available at [https://toshy.github.io/docker-sqlmap](https://toshy.github.io/docker-sqlmap).

## ❕ License

This repository comes with a [MIT license](./LICENSE).
