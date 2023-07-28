#!/bin/bash

# Iniciar o contêiner com o Docker Compose
docker-compose up -d --build

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
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git init"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git config --global user.name 'joaofeitoza.13'"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git config --global user.email 'joaofeitoza.13@gmail.com'"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git remote add origin https://github.com/joaofeitoza13/docker_test.git"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git clean -fd && git clean -fd tv_backend/"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git fetch"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git pull https://github.com/joaofeitoza13/docker_test.git main"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make update"
# docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make runserver"



echo "Initialization process concluded."
