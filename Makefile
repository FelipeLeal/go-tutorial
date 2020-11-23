build:
	docker build -t my-golang-app .
run:
	docker run -it --rm --name my-running-app my-golang-app
br: build run
outside:
	docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.14 go build -v
windows:
	docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp -e GOOS=windows -e GOARCH=386 golang:1.14 go build -v
go:
	go run $(file)
gomod:
	go mod init $(module)
gobuild:
	go build