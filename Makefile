#.PHONY explicity instructs makefile that these commands don't use files;

.PHONY: init
init:
	./scripts/init_db.sh

.PHONY: install
install:
	poetry install

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: migrate
migrate:
	poetry run python -m tv_backend.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m tv_backend.manage makemigrations

.PHONY: runserver
runserver:
	poetry run python -m tv_backend.manage runserver

.PHONY: createsuperuser
createsuperuser:
	poetry run python -m tv_backend.manage createsuperuser

.PHONY: docker
docker:
	docker-compose up --build

.PHONY: update
update: install migrate install-pre-commit lint;
