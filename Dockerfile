FROM golang AS build-env
ADD . /src
RUN cd /src && make

FROM scratch
EXPOSE 8080
ENTRYPOINT ["/kaniko-demo"]
COPY --from=build-env /src/bin/kaniko-demo /
