USE codeup_test_db;

SELECT name, sales AS 'All Albums' FROM albums;

UPDATE albums SET sales = sales * 10;

SELECT name, sales AS 'All Albums' FROM albums;





SELECT name, release_date AS 'Albums Released Before 1980' FROM albums WHERE release_date < 1980;

UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

SELECT name, release_date AS 'Albums Released Before 1900' FROM albums WHERE release_date < 1900;


SELECT name AS 'All Albums from Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET name = 'Peter Jackson' WHERE name = 'Michael Jackson';

SELECT name AS 'All Albums from Peter Jackson' FROM albums WHERE artist = 'Peter Jackson';