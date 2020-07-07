USE codeup_test_db;

SELECT 'Pink Floyd' AS 'All Albums From';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'Album Release Year';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Nevermind' AS 'Genre For';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'The 90''s' AS 'Album Decade';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Less than 20 Million Sales' AS 'Albums';
SELECT name FROM albums WHERE sales < 20.0;

SELECT 'Rock' AS 'Genre';
SELECT name FROM albums WHERE genre LIKE '%rock%';
