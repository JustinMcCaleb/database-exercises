USE codeup_test_db;

SELECT 'Albums released AFTER 1991' AS 'Delete';
-- SELECT name FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with genre of Disco' AS 'Delete';
-- SELECT name FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Albums from Whitney Houston' AS 'Delete';
-- SELECT name FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';