FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN chmod 777 -R .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["make go file=hello.go"]