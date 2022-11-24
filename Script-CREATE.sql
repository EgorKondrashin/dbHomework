CREATE TABLE IF NOT EXISTS musical_genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);
--
CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_genres (
	"genre_id" INTEGER REFERENCES musical_genres(genre_id),
	"artist_id" INTEGER REFERENCES artists(artist_id),
	CONSTRAINT pk PRIMARY KEY ("genre_id", "artist_id")
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	"year" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_albums (
	"artist_id" INTEGER REFERENCES artists(artist_id),
	"album_id" INTEGER REFERENCES albums(album_id),
	CONSTRAINT akey PRIMARY KEY ("artist_id", "album_id")
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	"album_id" INTEGER REFERENCES albums(album_id),
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	"year" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks_list (
	"track_id" INTEGER REFERENCES tracks(track_id),
	"collection_id" INTEGER REFERENCES collection(collection_id),
	CONSTRAINT tkey PRIMARY KEY ("track_id", "collection_id")
);
