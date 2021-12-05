up:
	docker-compose up -d

down:
	docker-compose down

restart: down up

exec:
	docker exec -it $(name) sh
