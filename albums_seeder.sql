USE codeup_test_db;
TRUNCATE albums;
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 48.9, 'Pop'),
       ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('Eagles', 'The Greatest Hits (1971-75)', 1976, 41.2, 'Country rock'),
       ('AC/DC', 'Back in Black', 1980, 29.6, 'Hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Country rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29, 'Hard rock'),
       ('Michael Jackson', 'Bad', 1987, 20.7, 'Pop'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Alternative rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17, 'New jack swing'),
       ('Celine Dion', 'Falling into You', 1996, 21.1, 'Pop'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('The Beatles', '1', 2000, 23.5, 'Rock'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23, 'Pop'),
       ('Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Heartland rock'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('James Horner', 'Titanic: Soundtrack', 1997, 18.1, 'Film Score'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock');

SELECT * FROM albums;
