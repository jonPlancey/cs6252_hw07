
/*create database*/

DROP DATABASE IF EXISTS
  jim_music_albums;
CREATE DATABASE IF NOT EXISTS jim_music_albums;
USE
  jim_music_albums;


 
 
/*create tables*/

CREATE TABLE artist(
	id_artist			int			not null 	auto_increment,
	artist_namefirst	varchar(60)	not null,
	artist_namelast		varchar(60)	not null,	
	
	primary key (id_artist)
);


/*create tables*/

CREATE TABLE album_title(
	id_album		int			not null 	auto_increment,
	id_artist		int			not null,
	album_name		varchar(60)	not null,
	album_date		date		not null,
	
	unique index id_artist (id_artist),
	primary key (id_album),
	foreign key (id_artist) references artist(id_artist)
);


/*create tables*/

CREATE TABLE album_content (
	id_album		int			not null 	auto_increment,
	track_name		varchar(60)	not null,
	track_time		time		not null,	
	track_artist	varchar(60)	not null,
	track_number	int 		not null,
	
	primary key (id_album, track_number)
);



/*create users*/
create user artist@localhost identified by 'music2015'; 

grant select, insert, update 
on *.*
to 'artist'@'localhost' require none;

 