FROM alpine:3.20

ARG SQLMAP_VERSION

LABEL maintainer="ToshY (github.com/ToshY)"

WORKDIR /sqlmap

RUN <<EOT sh
  set -ex
  apk add --no-cache wget python3
  wget --retry-on-host-error --retry-on-http-error=429,500,502,503 -O sqlmap.tar.gz "https://github.com/sqlmapproject/sqlmap/archive/refs/tags/$SQLMAP_VERSION.tar.gz"
  tar --strip-components=1 --no-same-owner --extract --file sqlmap.tar.gz -C ./
  rm -rf sqlmap.tar.gz .github .gitattributes .gitignore .pylintrc doc README.md
  mkdir -p ./.local/share/sqlmap/output. /.local/share/sqlmap/history
EOT

ENTRYPOINT ["python", "sqlmap.py"]
