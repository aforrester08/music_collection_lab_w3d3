DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;

CREATE TABLE artists (
  name VARCHAR(255),
  id SERIAL8 PRIMARY KEY
);

CREATE TABLE albums (
  title VARCHAR(255),
  genre VARCHAR(255),
  id SERIAL8 PRIMARY KEY,
  artist_id INT8 REFERENCES artists(id)
);
