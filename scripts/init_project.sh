#!/bin/bash

# Iniciar o contêiner com o Docker Compose
docker-compose up -d

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
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && git init"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make update"
docker exec -it tv_backend /bin/bash -c "cd /home/duser/tv_cms && make runserver"



echo "Initialization process concluded."
