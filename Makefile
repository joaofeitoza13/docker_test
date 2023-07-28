#.PHONY explicity instructs makefile that these commands don't use files;
.PHONY: install
install:
	poetry install

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: format
format:
	poetry run pre-commit run --all-files

.PHONY: migrate
migrate:
	poetry run python -m manage migrate

.PHONY: migrations
migrations:
	poetry run python -m manage makemigrations

.PHONY: runserver
runserver:
	poetry run python -m manage runserver

.PHONY: createsuperuser
createsuperuser:
	poetry run python -m manage createsuperuser

.PHONY: up
up:
	docker-compose up --build

.PHONY: dev-docker
dev-docker:
	test -f .env || touch .env
	docker-compose -f docker-compose.yml up --force-recreate db app

.PHONY: update
update: install migrate install-pre-commit;
