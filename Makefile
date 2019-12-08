default: build

all: fmt test build

build:
	@go install ./cmd/switchcli

fmt:
	@go fmt ./...

test:
	@go test ./...

image:
	@docker build -t goswitch .

.PHONY: all build default fmt test
