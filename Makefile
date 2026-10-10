.PHONY: install up down dev db-migrate lint format test build

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

test:
	npm run test

dev:
	npm run dev

build:
	npm run build