CREATE TABLE IF NOT EXISTS genre (
  id   BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS author (
  id        BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS book (
  id          BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  discription VARCHAR(255) NOT NULL,
  price       DOUBLE       NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE book_genres (
  book_id  BIGINT(20) NOT NULL,
  genre_id BIGINT(20) NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id),
  FOREIGN KEY (genre_id) REFERENCES genre (id),

  UNIQUE (book_id, genre_id)
)
  ENGINE = InnoDB;

CREATE TABLE book_authors (
  book_id  BIGINT(20) NOT NULL,
  author_id BIGINT(20) NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id),
  FOREIGN KEY (author_id) REFERENCES author (id),

  UNIQUE (book_id, author_id)
)
  ENGINE = InnoDB;

CREATE TABLE orders (
  id         BIGINT(20)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name  VARCHAR(100) NOT NULL,
  address    VARCHAR(100) NOT NULL,
  book_id    BIGINT(20)   NOT NULL,
  quantity   INT(20)      NOT NULL,

  FOREIGN KEY (book_id) REFERENCES book (id)
)
  ENGINE = InnoDB;