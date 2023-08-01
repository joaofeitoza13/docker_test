#!/bin/bash

echo "create tv_cms folder for initialization"
mkdir -p tv_cms

# Iniciar o contêiner com o Docker Compose
docker-compose -p tv_cms up -d --build

# Aguardar alguns segundos para o PostgreSQL iniciar
sleep 2

# Criar o usuário com permissões de superusuário
echo "Creating postgres user."
docker exec -it tv_database psql -U postgres -c "CREATE USER tv_user WITH SUPERUSER PASSWORD 'tv_password';"

sleep 2

# Criar o banco de dados
echo "Creating postgres database."
docker exec -it tv_database psql -U postgres -c "CREATE DATABASE tv_database;"

sleep 2

# Executar os scripts SQL no banco de dados
docker exec -i tv_database psql -U tv_user -d tv_database < scripts/db/tables.sql
docker exec -i tv_database psql -U tv_user -d tv_database < scripts/db/inserts.sql

# Executar os comandos para inicializar o sistema

# echo "git safe"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git config --global --add safe.directory /home/duser/tv_cms"

echo "git init"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git init"

echo "git config username"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git config --global user.name 'joaofeitoza.13'"

echo "git config email"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git config --global user.email 'joaofeitoza.13@gmail.com'"

echo "git config remote"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git remote add origin https://github.com/joaofeitoza13/docker_test.git"

# echo "git config clean"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git clean -fd && git clean -fd tv_backend/"

echo "git config fetch"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git fetch"

echo "git config pull"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git pull https://github.com/joaofeitoza13/docker_test.git main"

echo "update django packages"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make update"

echo "remove tv_cms folder for initialization"
rmdir ./tv_cms

echo "run django server"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make runserver"

echo "Initialization process concluded."
