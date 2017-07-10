INSERT IGNORE INTO genre  VALUES (1, 'Боевик');
INSERT IGNORE INTO genre  VALUES (2, 'Военный');
INSERT IGNORE INTO genre  VALUES (3, 'Исторический');
INSERT IGNORE INTO genre  VALUES (4, 'Приключения');
INSERT IGNORE INTO genre  VALUES (5, 'Юмор');
INSERT IGNORE INTO genre  VALUES (6, 'Фантастика');
INSERT IGNORE INTO genre  VALUES (7, 'Фентези');
INSERT IGNORE INTO genre  VALUES (8, 'Криминал');
INSERT IGNORE INTO genre  VALUES (9, 'Роман');
INSERT IGNORE INTO genre  VALUES (10, 'Мистика');
INSERT IGNORE INTO genre  VALUES (11, 'Ужасы');


INSERT IGNORE INTO author VALUES (1, 'Первый автор');
INSERT IGNORE INTO author VALUES (2, 'Второй автор');
INSERT IGNORE INTO author VALUES (3, 'Третий автор');
INSERT IGNORE INTO author VALUES (4, '4й автор');
INSERT IGNORE INTO author VALUES (5, '5й автор');
INSERT IGNORE INTO author VALUES (6, '6й автор');
INSERT IGNORE INTO author VALUES (7, '7й автор');
INSERT IGNORE INTO author VALUES (8, '8й автор');
INSERT IGNORE INTO author VALUES (9, '9й автор');
INSERT IGNORE INTO author VALUES (10, '10й автор');

INSERT IGNORE INTO book  VALUES (1, 'Первая книга', 'Some information', 99.99);
INSERT IGNORE INTO book  VALUES (2, 'Вторая книга', 'Some information', 199.99);
INSERT IGNORE INTO book  VALUES (3, 'Белая книга', 'Some information', 89.99);
INSERT IGNORE INTO book  VALUES (4, 'Красная книга', 'Some information', 69.99);
INSERT IGNORE INTO book  VALUES (5, 'Черная книга', 'Some information', 100);
INSERT IGNORE INTO book  VALUES (6, 'Золотая книга', 'Some information', 109.99);
INSERT IGNORE INTO book  VALUES (7, 'Старая книга', 'Some information', 50.50);
INSERT IGNORE INTO book  VALUES (8, 'Новая книга', 'Some information', 121.21);
INSERT IGNORE INTO book  VALUES (9, 'Интересная книга', 'Some information', 121.21);
INSERT IGNORE INTO book  VALUES (10, 'Лучшая книга', 'Some information', 199.99);

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


