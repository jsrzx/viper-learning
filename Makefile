build-app: clean make-dir build-mac build-linux build-windows
clean:
	rm -rf build/*
make-dir:
	mkdir -p build/{mac,linux,windows}
build-mac:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o build/mac ./cmd/...
build-linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/linux ./cmd/...
build-windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o build/windows ./cmd/...
