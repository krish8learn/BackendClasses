createdb:
	docker exec -it postgres-0Ore createdb --username=postgres --owner=postgres simple_bank

dropdb:
	docker exec -it postgres-0Ore dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgres://postgres:postgrespw@localhost:49153/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgres://postgres:postgrespw@localhost:49153/simple_bank?sslmode=disable" -verbose down

.PHONY: createdb dropdb migrateup migratedown
