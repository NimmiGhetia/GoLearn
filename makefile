#go
build:
	GOOS=linux go build -o app src/main.go

all: docker-comp

remove:
	docker-compose down

rebuild:
	docker-compose build --no-cache 

psc: 
	docker rm $$(docker ps -a| grep -v k8 | awk 'FNR != 1 {print $1}')
	# docker images -a | grep -v k8 |  awk 'FNR != 1 {print $3}'

psi: 
	docker rmi $$(docker images -a | grep -v k8 |  awk 'FNR != 1 {print $3}')

runlocal: build run

run:
	./app

docker-comp:
	docker-compose up