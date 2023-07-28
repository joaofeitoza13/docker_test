O Docker já adiciona um banco planejado para o ambiente de desenvolvimento que
contém dois arquivos .sql com seeds para o banco PostgreSQL;

Para inicializar o banco automaticamente:
  code: chmod + scripts/init_db.sh && scripts/init_db.sh

Para inicializar o banco manualmente, acesse o diretório raiz do projeto, tv_cms,
que deve conter o arquivo docker-compose.yml e entre com o comando:
  code: docker container up --build

Para fins de testes, é possível criar algum database utilizando algum SGBD de
sua preferência, como PgAdmin4, DBeaver, Beekeeper e etc, ou, caso prefira usar
o terminal para acessar o docker, pode usar esse comando:
  code: docker container exec -it tv_database psql -U postgres
  code: CREATE USER seu_usuário WITH SUPERUSER PASSWORD 'sua_senha_aqui';
  code: CREATE DATABASE tv_database;

Saia do client psql e acesse o terminal do container com o comando:
  code: docker container exec -it tv_database bash

Inicialize o banco com os dados do arquivo tables.sql e inserts.sql que foram
copiados para o caminho do container opt/db:
  code: psql -U tv_user -d tv_database < opt/db/tables.sql
Caso queira adicionar as seeds:
  code: psql -U tv_user -d tv_database < opt/db/inserts.sql

Com isso, os usuários e tabelas necessários foram criados, assim como algumas
seeds foram inseridas para o ambiente de desenvolvimento.

Esses passos podem ser replicados para criação de um banco de produção, mas não 
devem ser inseridas seeds.

Ocorreram alguns bugs ao tentar automatizar esse processo, mas será concluído
num fututo breve.

Crie uma pasta "tv_cms":
  code: mkdir tv_cms
Mude o diretório para "tv_cms":
  code: cd tv_cms
Copie as pasta "scripts" e "dotenv_files" e o arquivo "docker-compose.yml" para
o diretório "tv_cms";

Crie uma pasta tv_backend;
  mkdir tv_backend

cd tv_backend && mv tv_backend core && cd ..