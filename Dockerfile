FROM alpine:3.11
RUN apk --no-cache --update add git musl-dev go docker openrc


ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin

RUN go get github.com/google/ko/cmd/ko
RUN rc-update add docker boot