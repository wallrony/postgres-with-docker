#!/bin/bash

set -e

# PREENCHENDO USUÁRIOS
psql -v ON_ERROR_STOP=1 --username postgres --dbname db_test << -EOSQL

  INSERT INTO users (name, birth_date) VALUES ('Wallisson', '2000-09-13'), ('Rony', '2000-09-13');

-EOSQL

# PREENCHENDO LIVROS
psql -v ON_ERROR_STOP=1 --username postgres --dbname db_test << -EOSQL

  INSERT INTO books (name, description, price) VALUES ('Livro 1', 'Nenhuma descrição fornecida.', 20), ('Livro 2', 'Nenhuma descrição fornecida.', 30);

-EOSQL

# PREENCHENDO LIVROS DOS USUÁRIOS
psql -v ON_ERROR_STOP=1 --username postgres --dbname db_test << -EOSQL

  INSERT INTO user_book (user_id, book_id) VALUES (1, 1), (1, 2), (2, 2);

-EOSQL