FROM scratch

COPY ./fsserve /fsserve
EXPOSE 1313
WORKDIR /srv
CMD ["/fsserve", "-p", "1313", "/srv" ]
