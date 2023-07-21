FROM golang:1.15

COPY . /go/src/app
WORKDIR /go/src/app
RUN go get ./
RUN go build -o app
CMD ["./app"]
EXPOSE 8000