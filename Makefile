NAME := kaniko-demo
MAIN_GO := main.go
BUILDFLAGS := ''
CGO_ENABLED = 0

build:
	CGO_ENABLED=$(CGO_ENABLED) go build -ldflags $(BUILDFLAGS) -o bin/$(NAME) $(MAIN_GO)

clean:
	rm -rf build release

.PHONY: clean
