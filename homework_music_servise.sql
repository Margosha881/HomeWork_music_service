CREATE DATABASE music_servise;

CREATE TABLE genre
(
	genre_ID int  PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE performer
(
	performer_ID int PRIMARY KEY,
	performer_name TEXT NOT NULL,
	fk_genre_ID int REFERENCES genre(genre_ID) NOT NULL 	
);

CREATE TABLE genre_performer
(
	fk_genre_ID int REFERENCES genre(genre_ID) NOT NULL,
	fk_performer_ID int REFERENCES performer(performer_ID) NOT NULL
);

CREATE TABLE album
(
	album_ID int PRIMARY KEY,
	album_name TEXT NOT NULL,
	year_of_production varchar(4),
	fk_performer_ID int REFERENCES performer(performer_ID) NOT NULL
);

CREATE TABLE performer_album
(
	fk_performer_ID int REFERENCES performer(performer_ID) NOT NULL,
	fk_album_ID int REFERENCES album(album_ID) NOT NULL 
);

CREATE TABLE track
(
	track_ID int PRIMARY KEY,
	track_name TEXT NOT NULL,
	length_track int,
	fk_album_ID int REFERENCES album(album_ID) NOT NULL
	
);

CREATE TABLE collection
(
	collection_ID int PRIMARY KEY,
	year_of_production varchar(4),
	fk_track_ID int REFERENCES track(track_ID) NOT NULL,
	fk_album_ID int REFERENCES album(album_ID) NOT NULL
)

