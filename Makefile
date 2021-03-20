package:
	mvnw package -DskipTests
build:
	docker-compose build
run:
	docker-compose up -d
stop:
	docker-compose down
stop-release:
	docker-compose down --rmi local
ps:
	docker ps -a