-- количество исполнителей в каждом жанре;
SELECT mg."name", count(ag.artist_id) FROM musical_genres mg
JOIN artists_genres ag ON mg.genre_id = ag.genre_id
GROUP BY mg."name";

-- количество треков, вошедших в альбомы 2019-2020 годов;
SELECT count(track_id), a."year" FROM albums a
JOIN tracks t ON t.album_id = a.album_id
WHERE a."year" BETWEEN 2019 AND 2020
GROUP BY a."year";

-- средняя продолжительность треков по каждому альбому;
SELECT avg(duration), a."name" FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a."name";

-- все исполнители, которые не выпустили альбомы в 2020 году;
SELECT a3."name" FROM artists a3
WHERE a3.artist_id !=
(SELECT a.artist_id FROM artists a
JOIN artists_albums aa ON a.artist_id = aa.artist_id
JOIN albums a2 ON aa.album_id = a2.album_id AND a2."year" = 2020);

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c."name" FROM collection c
JOIN tracks_list tl ON c.collection_id = tl.collection_id 
JOIN tracks t ON tl.track_id = t.track_id 
JOIN albums a ON t.album_id = a.album_id 
JOIN artists_albums aa ON a.album_id = aa.album_id 
JOIN artists a2 ON aa.artist_id = a2.artist_id AND a2."name" = 'Eminem';

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a."name" FROM albums a
JOIN artists_albums aa ON a.album_id = aa.album_id
JOIN artists a2 ON aa.artist_id = a2.artist_id
JOIN artists_genres ag ON a2.artist_id = ag.artist_id
GROUP BY a."name" 
HAVING count(genre_id) > 1;


-- наименование треков, которые не входят в сборники;
SELECT t."name" FROM tracks t
LEFT JOIN tracks_list tl ON t.track_id = tl.track_id
WHERE tl.collection_id IS NULL;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT a."name", min(duration) FROM artists a
JOIN artists_albums aa ON a.artist_id = aa.artist_id 
JOIN albums a2 ON aa.album_id = a2.album_id
JOIN tracks t ON a2.album_id = t.album_id
WHERE t.duration = (SELECT min(duration) FROM tracks t2)
GROUP BY a."name", t.duration  
ORDER BY t.duration;

-- название альбомов, содержащих наименьшее количество треков.
SELECT a."name", count(track_id) FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a."name"
HAVING count(track_id) <= (SELECT count(track_id) FROM albums a2
JOIN tracks t2 ON a2.album_id = t2.album_id 
GROUP BY a2."name"
ORDER BY count(track_id)
LIMIT 1);




