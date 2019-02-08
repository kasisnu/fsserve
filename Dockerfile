FROM alpine:3.4

RUN apk add --no-cache ca-certificates bash \
      && update-ca-certificates


COPY ./fsserve /fsserve
EXPOSE 1313
WORKDIR /srv
CMD ["/fsserve", "-p", "1313", "/srv" ]
