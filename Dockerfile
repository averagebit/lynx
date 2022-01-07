# Run lynx from a container
#
# docker run --rm -it \
#       --name lynx \
#       averagebit/lynx
#
FROM alpine
LABEL maintainer="averagebit@pm.me"

RUN apk --no-cache add \
    ca-certificates lynx

COPY lynx.cfg lynx.lss /etc/

ENTRYPOINT ["lynx", "--useragent=\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1 Lynx\""]
USER nobody
CMD ["-h"]
