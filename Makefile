
.PHONY: install up down db-migrate lint format

install:
	npm install

up:
	docker compose up -d

down:
	docker compose down

db-migrate:
	npx prisma migrate dev

lint:
	npx eslint . --ext .ts

format:
	npx prettier --write "src/**/*.ts"
