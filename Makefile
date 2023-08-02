#.PHONY explicity instructs makefile that these commands don't use files;

### PROJECT INIT
.PHONY: init
init:
	./scripts/init_project.sh

### DOCKER ###
.PHONY: docker
docker:
	docker-compose up --build

.PHONY:database
database:
	docker container exec -it tv_database bash

.PHONY: root-database
root-database:
	docker container exec -it -u root tv_database bash

.PHONY: backend
backend:
	docker container exec -it tv_backend bash

.PHONY: root-backend
root-backend:
	docker container exec -it -u root tv_backend bash

.PHONY:frontend 
frontend:
	docker container exec -it tv_frontend bash

.PHONY: root-frontend
root-frontend:
	docker container exec -it -u root tv_frontend bash
