all: build

prepare:
	docker pull debian:stretch-slim

build: prepare build-work
build-work:
	docker build --squash -t index.segurasystems.com/mysql/test-databases:latest .

push: build push-work
push-work:
	docker push index.segurasystems.com/mysql/test-databases:latest
