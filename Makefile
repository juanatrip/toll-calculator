.PHONY: all

ROOT_DIRNAME:=$(shell basename $(CURDIR))
export ROOT_DIRNAME

build:
	docker compose build
rails:
	docker compose run --rm web rails ${A}
rspec:
	docker compose run --rm web bundle exec rspec --format documentation ${A}
up:
	docker compose up
down:
	docker compose down

build-prod:
	docker build -t ${ROOT_DIRNAME} -f deploy/Dockerfile.production .