SELECT title, COUNT(*) FROM genre_artist g_a
JOIN genre ON g_a.genre_id = genre.id
GROUP BY title 
ORDER BY COUNT(*) DESC;

SELECT year_, COUNT(*) FROM album a 
JOIN song ON song.id = a.id
WHERE year_ >= 2019 AND year_ <=2020
GROUP BY year_
ORDER BY COUNT(*) DESC;

SELECT title, AVG(duration) FROM album_song a_s
JOIN album a ON a.id = a_s.album_id
JOIN song s ON s.album_id = a_s.album_id 
GROUP BY title;

SELECT nickname FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id
JOIN album a2 ON aa.album_id = a2.id 
WHERE title != (SELECT title FROM album a WHERE year_ = 2020);

SELECT c.name_ FROM collection c 
JOIN song s ON s.collection_id = c.id 
JOIN album a ON s.album_id = a.id 
JOIN artist_album aa ON aa.album_id = a.id 
JOIN artist a_ ON a_.id = aa.artist_id 
WHERE a_.nickname = 'Ария';

SELECT title, COUNT(genre_id)  FROM album a
JOIN genre_artist ga ON ga.artist_id = a.id
JOIN artist_album aa ON a.id = aa.album_id  
GROUP BY title, genre_id;

SELECT title, count(genre_id) FROM artist a 
JOIN genre_artist ga ON ga.artist_id = a.id
JOIN artist_album aa ON a.id = aa.album_id
JOIN album a2 ON a2.id = aa.album_id 
GROUP BY title
HAVING COUNT(title) > 1;

SELECT name_, collection_id FROM song
WHERE collection_id IS NUll;

SELECT nickname, name_, min(duration) FROM artist a
JOIN artist_album aa ON aa.artist_id = a.id 
JOIN album_song as2 ON as2.album_id = aa.album_id
JOIN song s ON s.id = as2.song_id 
GROUP BY nickname, name_, duration
HAVING duration = (SELECT min(duration) FROM song);

SELECT title, count(as2.album_id)  FROM album a 
JOIN album_song as2 ON as2.album_id = a.id 
JOIN song s ON s.album_id = a.id 
GROUP BY title, as2.album_id
HAVING count(as2.album_id) = (SELECT count(as2.album_id) FROM album a 
                              JOIN album_song as2 ON as2.album_id = a.id 
                              JOIN song s ON s.album_id = a.id 
                              GROUP BY as2.album_id 
                              ORDER BY count(as2.album_id)
                              LIMIT 1);