INSERT IGNORE INTO genre (name) VALUES ('Боевик');
INSERT IGNORE INTO genre (name) VALUES ('Военный');
INSERT IGNORE INTO genre (name) VALUES ('Исторический');
INSERT IGNORE INTO genre (name) VALUES ('Приключения');
INSERT IGNORE INTO genre (name) VALUES ('Юмор');
INSERT IGNORE INTO genre (name) VALUES ('Фантастика');
INSERT IGNORE INTO genre (name) VALUES ('Фентези');
INSERT IGNORE INTO genre (name) VALUES ('Криминал');
INSERT IGNORE INTO genre (name) VALUES ('Роман');
INSERT IGNORE INTO genre (name) VALUES ('Мистика');
INSERT IGNORE INTO genre (name) VALUES ('Ужасы');


INSERT IGNORE INTO author (full_name) VALUES ('Первый автор');
INSERT IGNORE INTO author (full_name) VALUES ('Второй автор');
INSERT IGNORE INTO author (full_name) VALUES ('Третий автор');
INSERT IGNORE INTO author (full_name) VALUES ('4й автор');
INSERT IGNORE INTO author (full_name) VALUES ('5й автор');
INSERT IGNORE INTO author (full_name) VALUES ('6й автор');
INSERT IGNORE INTO author (full_name) VALUES ('7й автор');
INSERT IGNORE INTO author (full_name) VALUES ('8й автор');
INSERT IGNORE INTO author (full_name) VALUES ('9й автор');
INSERT IGNORE INTO author (full_name) VALUES ('10й автор');

INSERT IGNORE INTO book (name, description, price) VALUES ('Первая книга', 'Some information', 99.99);
INSERT IGNORE INTO book (name, description, price) VALUES ('Вторая книга', 'Some information', 199.99);
INSERT IGNORE INTO book (name, description, price) VALUES ('Белая книга', 'Some information', 89.99);
INSERT IGNORE INTO book (name, description, price) VALUES ('Красная книга', 'Some information', 69.99);
INSERT IGNORE INTO book (name, description, price) VALUES ('Черная книга', 'Some information', 100);
INSERT IGNORE INTO book (name, description, price) VALUES ('Золотая книга', 'Some information', 109.99);
INSERT IGNORE INTO book (name, description, price) VALUES ('Старая книга', 'Some information', 50.50);
INSERT IGNORE INTO book (name, description, price) VALUES ('Новая книга', 'Some information', 121.21);
INSERT IGNORE INTO book (name, description, price) VALUES ('Интересная книга', 'Some information', 121.21);
INSERT IGNORE INTO book (name, description, price) VALUES ('Лучшая книга', 'Some information', 199.99);

INSERT IGNORE INTO book_genres VALUES (1, 3);
INSERT IGNORE INTO book_genres VALUES (1, 4);
INSERT IGNORE INTO book_genres VALUES (1, 2);

INSERT IGNORE INTO book_genres VALUES (2, 1);
INSERT IGNORE INTO book_genres VALUES (2, 8);

INSERT IGNORE INTO book_genres VALUES (3, 10);
INSERT IGNORE INTO book_genres VALUES (3, 11);

INSERT IGNORE INTO book_genres VALUES (4, 9);
INSERT IGNORE INTO book_genres VALUES (4, 5);

INSERT IGNORE INTO book_genres VALUES (5, 6);
INSERT IGNORE INTO book_genres VALUES (5, 7);

INSERT IGNORE INTO book_genres VALUES (6, 4);
INSERT IGNORE INTO book_genres VALUES (6, 5);

INSERT IGNORE INTO book_genres VALUES (7, 3);
INSERT IGNORE INTO book_genres VALUES (7, 9);

INSERT IGNORE INTO book_genres VALUES (8, 9);
INSERT IGNORE INTO book_genres VALUES (8, 10);
INSERT IGNORE INTO book_genres VALUES (8, 11);

INSERT IGNORE INTO book_genres VALUES (9, 4);
INSERT IGNORE INTO book_genres VALUES (9, 5);
INSERT IGNORE INTO book_genres VALUES (9, 6);

INSERT IGNORE INTO book_genres VALUES (10, 6);
INSERT IGNORE INTO book_genres VALUES (10, 4);
INSERT IGNORE INTO book_genres VALUES (10, 1);


INSERT IGNORE INTO book_authors VALUES (1, 1);
INSERT IGNORE INTO book_authors VALUES (1, 10);
INSERT IGNORE INTO book_authors VALUES (1, 5);
INSERT IGNORE INTO book_authors VALUES (1, 7);
INSERT IGNORE INTO book_authors VALUES (2, 2);
INSERT IGNORE INTO book_authors VALUES (2, 4);
INSERT IGNORE INTO book_authors VALUES (3, 3);
INSERT IGNORE INTO book_authors VALUES (3, 8);
INSERT IGNORE INTO book_authors VALUES (4, 8);
INSERT IGNORE INTO book_authors VALUES (4, 2);
INSERT IGNORE INTO book_authors VALUES (4, 5);
INSERT IGNORE INTO book_authors VALUES (5, 5);
INSERT IGNORE INTO book_authors VALUES (6, 9);
INSERT IGNORE INTO book_authors VALUES (6, 7);
INSERT IGNORE INTO book_authors VALUES (7, 7);
INSERT IGNORE INTO book_authors VALUES (8, 1);
INSERT IGNORE INTO book_authors VALUES (8, 6);
INSERT IGNORE INTO book_authors VALUES (9, 6);
INSERT IGNORE INTO book_authors VALUES (10, 2);
INSERT IGNORE INTO book_authors VALUES (10, 5);
INSERT IGNORE INTO book_authors VALUES (10, 10);


