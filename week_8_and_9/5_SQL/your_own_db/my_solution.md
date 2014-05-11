<!-- ## Show the terminal output here.  -->

CREATE TABLE songs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  song_name VARCHAR(512) NOT NULL,
  id_artist INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  FOREIGN KEY(id_artist) REFERENCES artists(id)
);

CREATE TABLE artists (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_name VARCHAR(128) NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

INSERT INTO artists 
(artist_name, created_at, updated_at)
VALUES
('Chromeo', DATETIME('now'), DATETIME('now'))

INSERT INTO artists 
(artist_name, created_at, updated_at)
VALUES
('RJD2', DATETIME('now'), DATETIME('now'))

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('Night by night', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('Ghostwriter', 2, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('Hot Mess', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('You make it rough', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('Grow up', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('The right type', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
('When the night falls', 1, DATETIME('now'), DATETIME('now'));

INSERT INTO songs 
(song_name, id_artist, created_at, updated_at) 
VALUES 
("Don't turn the lights on" , 1, DATETIME('now'), DATETIME('now'));



