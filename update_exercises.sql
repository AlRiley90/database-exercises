USE codeup_test_db;
SELECT name AS 'All albums'
FROM albums;

SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;

SELECT name AS 'All MJ albums'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = release_date -100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums;