USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(250) DEFAULT 'Unknown',
        `name` VARCHAR(250) DEFAULT 'Unknown',
        release_date INT,
        sales FLOAT,
        genre VARCHAR(250),
        PRIMARY KEY (id)
);