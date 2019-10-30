# viper demo app

> yaml format && env

## how to running

* local

without env:

```code
go run cmd/yaml/main.go
```
with env:

```code
APIKEY=rongfengliang go run cmd/yaml/main.go
```
##  build

> include windows linux mac

```code
make
```

## runing with docker

* build image

```code
make
docker-compose build
```

* running

> with env change `.env` file for test config value from env

```code
docker-compose up
```