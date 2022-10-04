FROM kong:alpine

COPY kong.conf /etc/kong/
USER root

COPY ./plugins /custom-plugins
WORKDIR /custom-plugins/kong-upstream-jwt
RUN luarocks make

USER kong