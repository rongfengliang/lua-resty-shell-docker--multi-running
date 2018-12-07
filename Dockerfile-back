FROM openresty/openresty:alpine-fat
LABEL author="1141591465@qq.com"
WORKDIR /sockproc
COPY ./sockproc/ /sockproc/
RUN make sockproc
COPY entrypoint.sh /entrypoint.sh
COPY sockproc.sh /sockproc.sh
COPY shell.lua /usr/local/openresty/lualib/resty/shell.lua
ENTRYPOINT [ "/entrypoint.sh" ]