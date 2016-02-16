
/*create database*/

DROP DATABASE IF EXISTS
  jim_music_albums;
CREATE DATABASE IF NOT EXISTS jim_music_albums;
USE
  jim_music_albums;


  
/*create tables*/

CREATE TABLE album_title(
	id_album		int			not null	primary key		auto_increment,
	id_artist		int			not null	foreign key		auto_increment,
	album_name		varchar(60)	not null,
	album_date		date		not null
);


/*create tables*/

CREATE TABLE artist(
	id_album	int			not null	primary key		auto_increment,
	artist_name	varchar(60)	not null
);


/*create tables*/

CREATE TABLE album_content (
	id_album
	track_name
	track_time		time		not null,	
	track_artist	varchar(60)	not null,
	track_number	int 		not null,
	primary key (id_album, track_number)
);