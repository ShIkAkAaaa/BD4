
INSERT INTO genre (title)
VALUES ('Rock'),
	   ('Rap'),
	   ('Pop'),
	   ('Metal'),
	   ('Jazz');

INSERT INTO artist (nickname)
VALUES ('Король и Шут'),
       ('Ария'),
       ('Децл'),
       ('Scorpions'),
       ('Scooter'),
       ('Metallica'),
       ('Ramstein'),
       ('Miles Davis');

INSERT INTO album  (title, year_)
VALUES ('Камнем по голове', 1996),
	   ('Феникс', 2011),
	   ('Кто? Ты', 2000),
	   ('Crazy World', 1990),
	   ('No Time to Chill', 1998),
	   ('my Reload', 1997),
	   ('Zeit', 2020),
	   ('Kind of Blue', 1959);

INSERT INTO collection (name_, year_)
VALUES ('One', 2011),
       ('Two', 2012),
       ('Free', 2013),
       ('Four', 2014),
       ('Five', 2015),
       ('Six', 2016),
       ('Seven', 2017),
       ('Eight', 2018);

INSERT INTO song  (name_, duration, album_id, collection_id)
VALUES ('Садовник', 136, 1, 1),
       ('Дурак и молния', 242, 1, 1),
       ('Два вора и монета', 311, 1, 2),
       ('Чёрный квадрат', 233, 2, 2),
       ('Равновесие сил', 245, 2, 3),
       ('Уличный боец', 222, 3, 3),
       ('Lust or Love', 166, 4, 4),
       ('Wind of Change', 171, 4, 4),
       ('Last Warning', 122, 5, 5),
       ('Time and Space', 188, 5, 5),
       ('Fuel', 222, 6, 6),
       ('Bad Seed', 254, 6, 6),
       ('my Ok', 233, 7, 7),
       ('Angst', 312, 7, 7),
       ('So What', 211, 8, 8),
       ('SsS', 232, 5, NULL);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (1, 4),
       (3, 5),
       (4, 6),
       (4, 7),
       (5, 8), 
       (2, 8); 

INSERT INTO artist_album  (album_id, artist_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8);

INSERT INTO album_song  (album_id, song_id)
VALUES (1, 1),
       (1, 1),
       (1, 2),
       (1, 3),
       (2, 4),
       (2, 5),
       (3, 6),
       (4, 7),
       (4, 8),
       (5, 9),
       (5, 10),
       (6, 11),
       (6, 12),
       (7, 13),
       (7, 14),
       (8, 15);