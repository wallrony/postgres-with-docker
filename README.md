# Local PostgreSQL Docker Instance

Esse é um projeto simples para simular a dockerização de um database PostgreSQL. É um projeto bem simples para aprender a mexer em Docker.

Esse projeto contém um database bem simples com usuário, livro e um relacionamento entre essas duas entidades.

Dentro da pasta "docker" há um arquivo para iniciar o container com o postgreSQL. Nessa pasta também é possível inserir o arquivo de outros possíveis containers do projeto, auxiliando na organização. Como exemplo, é possível colocar um arquivo .dockerfile instânciando o backend de um projeto. Assim, a configuração do banco de dados ficará junto ao do backend, não necessitando buscar alguma instância online ou preparar todo o pacote do postgreSQL localmente, mas sim só tendo o Docker instalado.

Dentro da pasta "files/init" há o arquivo `db.sql` com todo o código sql para criação do banco de dados. Já o arquivo `start.sh` há um script que faz um processo de "seed", inserindo os valores padrão e preparando o banco de dados para ser utilizado desde o início com valores pré-definidos, não necessitando de uma operação manual.

Para visualizar os dados, execute o comando sql para pegar os dados:

```sql
select books.id book_id, books.name book_name, books.description book_description, users.id user_id, users.name user_name from user_book inner join users on (user_book.user_id = users.id) inner join books on user_book.book_id = books.id;
```

Ou, caso não tenha alguma ferramenta de gerenciamento de banco de dados ou de comandos SQL e conexão com bancos, execute pelo docker:

```bash
docker exec -it postgres psql -U postgres --dbname db_test
```

Após iniciar o console do postgres, execute o SQL apresentado acima.
