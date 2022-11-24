INSERT INTO musical_genres (name) VALUES
('Hip-hop'),
('Pop'),
('House'),
('Hard Rock'),
('Rock');

INSERT INTO artists (name) VALUES
('Eminem'),
('Feder'),
('System Of A Down'),
('Michael Jackson'),
('David Guetta'),
('Skillet'),
('Ляпис Трубецкой'),
('ATL');

INSERT INTO albums (name, "year") VALUES
('Bad', 1987),
('Music To Be Murdered By', 2020),
('Curtain Call - The Hits', 2002),
('Toxicity', 2001),
('Unleashed', 2016),
('Весёлые картинки', 2011),
('Кривой эфир', 2018),
('Радио Апокалипсис', 2021);

INSERT INTO artists_albums VALUES
(4, 1),
(1, 2),
(1, 3),
(3, 4),
(6, 5),
(7, 6),
(8, 7),
(8, 8);

INSERT INTO artists_genres VALUES
(1, 1),
(3, 2),
(4, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(1, 8);

INSERT INTO collection (name, "year") VALUES
('Curtain Call: The Hits', 2005),
('Number Ones', 2003),
('Hardplace', 2002),
('Сборник треков ATL', 2020),
('Essentials', 2018),
('Лучшее за все годы', 2016),
('Curtain Call 2', 2022),
('Pledge of Allegiance Tour', 2001);

INSERT INTO tracks (album_id, name, duration) VALUES
(1, 'Smooth Criminal', 257),
(2, 'Godzila', 210),
(3, 'My Name Is', 269),
(3, 'The Real Slim Shady', 285),
(3, 'Mockingbird', 251),
(4, 'Chop Suey!', 210),
(4, 'Aerials', 235),
(4, 'Toxicity', 219),
(5, 'I Want to Live', 208),
(5, 'The Resistance', 231),
(6, 'Шут', 204),
(7, 'Серпантин', 171),
(7, 'Спиннинг', 203),
(8, 'Ящик', 207),
(8, 'Никакой эмпатии', 173);

INSERT INTO tracks_list VALUES
(1, 2),
(2, 7),
(3, 1),
(4, 1),
(5, 1),
(6, 3),
(7, 3),
(8, 8),
(9, 5),
(10, 5),
(11, 6),
(12, 4),
(13, 4),
(14, 4),
(15, 4);

