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

* nodejs app build demo

```code
open http://localhost:8080/node
```
result like below

```code
/usr/bin/yarn -> /usr/lib/node_modules/yarn/bin/yarn.js
/usr/bin/yarnpkg -> /usr/lib/node_modules/yarn/bin/yarn.js
+ yarn@1.12.3
updated 1 package in 0.521s
yarn init v1.12.3
success Saved package.json
Done in 0.06s.
yarn add v1.12.3
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved 1 new dependency.
info Direct dependencies
└─ uuid@3.3.2
info All dependencies
└─ uuid@3.3.2
Done in 1.16s.
.
├── node_modules
│   └── uuid
│       ├── AUTHORS
│       ├── CHANGELOG.md
│       ├── LICENSE.md
│       ├── README.md
│       ├── README_js.md
│       ├── bin
│       │   └── uuid
│       ├── index.js
│       ├── lib
│       │   ├── bytesToUuid.js
│       │   ├── md5-browser.js
│       │   ├── md5.js
│       │   ├── rng-browser.js
│       │   ├── rng.js
│       │   ├── sha1-browser.js
│       │   ├── sha1.js
│       │   └── v35.js
│       ├── package.json
│       ├── v1.js
│       ├── v3.js
│       ├── v4.js
│       └── v5.js
├── package.json
└── yarn.lock

4 directories, 22 files
```