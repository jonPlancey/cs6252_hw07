
/*create database*/

DROP DATABASE IF EXISTS
  jim_music_albums;
CREATE DATABASE IF NOT EXISTS jim_music_albums;
USE
  jim_music_albums;


/*create users*/
create user artist@localhost IDENTIFIED by 'music2015'; 

grant select, insert, update
on jim_music_albums.*
to artist@localhost identfied by 'music2015';


  

/*create tables*/

CREATE TABLE artist(
	id_artist		int			not null 	auto_increment,
	artist_name		varchar(60)	not null,
	
	primary key (id_artist)
);


/*create tables*/

CREATE TABLE album_title(
	id_album		int			not null 	auto_increment,
	id_artist		int			not null,
	album_name		varchar(60)	not null,
	album_date		date		not null,
	
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