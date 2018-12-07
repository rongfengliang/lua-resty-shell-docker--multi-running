# lua-resty-shell with docker multi running

use nginx stream && resolver config && shell with socket connect

## how to run

* build  image

```code
docker-compose build
```

* running

```code
docker-compose up -d
```

* test

```code
open http://localhost:8080/test

you will see all directory in root path
```

* scale backend service

```code
docker-compose scale backend=3
```

```code
docker-compose ps
             Name                    Command       State          Ports
-------------------------------------------------------------------------------
openresty-shell-multi_app_1       /entrypoint.sh   Up      0.0.0.0:8080->80/tcp
openresty-shell-multi_backend_1   /entrypoint.sh   Up
openresty-shell-multi_backend_2   /entrypoint.sh   Up
openresty-shell-multi_backend_3   /entrypoint.sh   Up
```
