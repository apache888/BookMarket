DROP SCHEMA IF EXISTS book;
DROP SCHEMA IF EXISTS genre;
DROP SCHEMA IF EXISTS author;
DROP SCHEMA IF EXISTS book_genres;
DROP SCHEMA IF EXISTS book_authors;

CREATE TABLE genre (
  id   BIGINT       NOT NULL IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE author (
  id        BIGINT       NOT NULL IDENTITY PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL
);

CREATE TABLE book (
  id          BIGINT       NOT NULL IDENTITY PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  price       DOUBLE       NOT NULL
);

CREATE TABLE book_genres (
  book_id  BIGINT NOT NULL,
  genre_id BIGINT NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id),
  FOREIGN KEY (genre_id) REFERENCES genre (id),

  UNIQUE (book_id, genre_id)
);

CREATE TABLE book_authors (
  book_id   BIGINT NOT NULL,
  author_id BIGINT NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id),
  FOREIGN KEY (author_id) REFERENCES author (id),

  UNIQUE (book_id, author_id)
);

CREATE TABLE orders (
  id         BIGINT       NOT NULL IDENTITY PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name  VARCHAR(100) NOT NULL,
  address    VARCHAR(100) NOT NULL,
  book_id    BIGINT       NOT NULL,
  quantity   INT          NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id)
);