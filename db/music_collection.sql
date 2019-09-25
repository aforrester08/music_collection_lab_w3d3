DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

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
