
/*create database*/

DROP DATABASE IF EXISTS
  jim_music_albums;
CREATE DATABASE IF NOT EXISTS jim_music_albums;
USE
  jim_music_albums;


  
/*create tables*/

CREATE TABLE album_title(
	id_album		int			not null	primary key		auto_increment,
	id_artist		int			not null	foreign key,
	album_name		varchar(60)	not null,
	album_date		date		not null
	
	primary key (id_album, track_number)
	foreign key (id_artist) references artist(id_artist)
);


/*create tables*/

CREATE TABLE artist(
	id_artist	int			not null	primary key		auto_increment,
	artist_name	varchar(60)	not null
);


/*create tables*/

CREATE TABLE album_content (
	id_album		int			not null,
	track_name		varchar(60)	not null,
	track_time		time		not null,	
	track_artist	varchar(60)	not null,
	track_number	int 		not null,
	
	primary key (id_album, track_number)
);