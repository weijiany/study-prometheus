up:
	docker-compose build --no-cache
	docker-compose up -d

down:
	docker-compose down
	docker volume prune -f

restart: down up

exec:
	docker exec -it $(name) sh

logs:
	docker logs -f $(name)