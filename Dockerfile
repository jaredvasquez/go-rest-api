FROM golang:1.13.5-alpine3.10
EXPOSE 8080

WORKDIR /go/src/github.com/jaredvasques/go-rest-api
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["go-rest-api"]
