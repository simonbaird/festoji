
bin/festoji: main.go app/*.go app/config.yaml
	@mkdir -p bin
	go build -o bin/festoji main.go

.PHONY: build
build: bin/festoji

.PHONY: test
test:
	go test -v ./...
