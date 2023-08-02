#.PHONY explicity instructs makefile that these commands don't use files;

### POETRY
.PHONY: install
install:
	poetry install

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: update
update: install migrate install-pre-commit lint;

### DJANGO ###
.PHONY: migrate
migrate:
	poetry run python -m manage migrate

.PHONY: migrations
migrations:
	poetry run python -m manage makemigrations

.PHONY: runserver
runserver:
	poetry run python -m manage runserver 0.0.0.0:8000

.PHONY: createsuperuser
createsuperuser:
	poetry run python -m manage createsuperuser

### DOCKER ###
.PHONY: backend
backend:
	docker container exec -it tv_backend bash

.PHONY: root-backend
root-backend:
	docker container exec -it -u root tv_backend bash

.PHONY:database
database:
	docker container exec -it tv_database bash

.PHONY: root-database
root-database:
	docker container exec -it -u root tv_database bash
