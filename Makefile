kong-postgres:
	COMPOSE_PROFILES=database KONG_DATABASE=postgres docker-compose --env-file .env up --build -d

kong-dbless:
	docker-compose up --build -d

clean:
	docker-compose kill
	docker-compose rm -f
