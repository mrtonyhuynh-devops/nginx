FROM bitnami/nginx:latest
LABEL maintainer "Tri Huynh <mrtonyhuynh@gmail.com>"

## Revert to the original non-root user
USER 1001

COPY ./basic.conf /opt/bitnami/nginx/conf/bitnami/basic.conf

COPY ./nginx.conf /opt/bitnami/nginx/conf/nginx.conf

COPY ./snippets /opt/bitnami/nginx/conf/snippets

EXPOSE 8080 8443

## Modify the default container user
USER 1002