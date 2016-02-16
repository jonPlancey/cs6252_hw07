
/*create database*/

DROP DATABASE IF EXISTS
  jim_music_albums;
CREATE DATABASE IF NOT EXISTS jim_music_albums;
USE
  jim_music_albums;


  
/*create tables*/

CREATE TABLE album_title(
	id_album	int			not null	primary key		auto_increment,
	id_artist
	album_name	varchar(60)	not null,
	album_date	date		not null
);


/*create tables*/

CREATE TABLE artist(

);


/*create tables*/

CREATE TABLE album_content (
 
);