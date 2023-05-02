default: dev

image:
	COMPOSE_PROJECT_NAME=pretto-se-test DOCKER_BUILDKIT=1 docker compose build app

dev: image
	COMPOSE_PROJECT_NAME=pretto-se-test COMPOSE_PROFILES=app docker compose up --remove-orphans

shell: image
	COMPOSE_PROJECT_NAME=pretto-se-test	docker compose  run --rm app bash

console: image
	COMPOSE_PROJECT_NAME=pretto-se-test	docker compose run --rm app make _console

lsp_image:
	COMPOSE_PROJECT_NAME=pretto-se-test DOCKER_BUILDKIT=1 docker compose build lsp

# /!\ underscore commands are to be ran inside the shell container

_test:
	RAILS_ENV=test bundle exec rspec

_console:
	bundle exec rails console


