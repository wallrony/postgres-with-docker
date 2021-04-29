CREATE DATABASE db_test;

\connect db_test;

CREATE TABLE users (
  id serial primary key,
  name varchar(100) not null,
  birth_date date not null
);

CREATE TABLE books (
  id serial primary key,
  name varchar(150) not null,
  description text,
  price decimal not null
);

CREATE TABLE user_book (
  user_id int not null,
  book_id int not null,

  constraint foreign_user foreign key (user_id) references users (id),
  constraint foreign_book foreign key (book_id) references books (id)
);
