up:
	docker-compose build prometheus --no-cache
	docker-compose up -d

down:
	docker-compose down
	docker volume prune -f

restart: down up

exec:
	docker exec -it $(name) sh

logs:
	docker logs -f $(name)

reload-prom:
	curl -XPOST localhost:9090/-/reload
