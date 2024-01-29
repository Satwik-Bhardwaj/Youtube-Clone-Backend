CREATE DATABASE YOUTUBE_MUSIC_DBMS;

USE YOUTUBE_MUSIC_DBMS;

CREATE TABLE userAccount(
    UserID VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    UserPassword VARCHAR(20) NOT NULL,
    Dob DATE,
    Gender CHAR(3), 
    Subscription INTEGER,
    CardNo VARCHAR(16) NOT NULL,
    PRIMARY KEY (UserID),
	ProfilePicture BLOB
);

CREATE TABLE addressUser(
	UserID VARCHAR(20),
    Street VARCHAR(100),
    City VARCHAR(50),
    Province VARCHAR(50),
    PostalCode VARCHAR(10),
    foreign key (UserID) REFERENCES useraccount (UserID) on delete cascade
);

CREATE TABLE artist(
    ArtistID VARCHAR(20) PRIMARY KEY,
    ArtistName VARCHAR(100),
	ProfilePicture BLOB
);

CREATE TABLE album(
    AlbumID VARCHAR(20) PRIMARY KEY,
    AlbumName VARCHAR(100),
    AlbumYear INTEGER,
    Genre VARCHAR(20),
    AlbumCover BLOB
);

CREATE TABLE releases(
    AlbumID VARCHAR(20) REFERENCES album(AlbumID) ON DELETE CASCADE,
    ArtistID VARCHAR(20) REFERENCES artist(ArtistID) ON DELETE CASCADE,
    PRIMARY KEY(AlbumID, ArtistID)
);

CREATE TABLE song(
    SongID VARCHAR(20),
    ArtistID VARCHAR(20),
    AlbumID VARCHAR(20),
    foreign key (ArtistID) REFERENCES artist(ArtistID) ON DELETE CASCADE,
    foreign key (AlbumID) REFERENCES album(AlbumID) ON DELETE CASCADE,
    Streams INTEGER DEFAULT 0,
    SongName VARCHAR(100),
    SongLength INTEGER,
    Genre VARCHAR(100),
    PRIMARY KEY(SongID)
);

CREATE TABLE playlist(
    UserID VARCHAR(20),
    PlaylistID VARCHAR(20),
    PlaylistName VARCHAR(100),
    PRIMARY KEY(PlaylistID),
    FOREIGN KEY (UserID) REFERENCES userAccount(UserID) ON DELETE CASCADE,-- Deleted UserID from PRIMARY KEY (WILL ASK TA DURING DEMO)
	PlaylistCover BLOB
);


CREATE TABLE contains(
    PlaylistID VARCHAR(20),
    SongID VARCHAR(20),
    FOREIGN KEY (PlaylistID) REFERENCES playlist (PlaylistID) ON DELETE CASCADE,
    FOREIGN KEY (SongID) REFERENCES song (SongID) ON DELETE CASCADE
);
CREATE TABLE follows(
    UserID VARCHAR(20),
    foreign key (UserID) REFERENCES userAccount(UserID) ON DELETE CASCADE,
    ArtistID VARCHAR(20),
    foreign key (ArtistID) REFERENCES artist(ArtistID) ON DELETE CASCADE,
    Followers INTEGER DEFAULT 0, 
    Followering INTEGER DEFAULT 0 
);

CREATE TABLE category (
    CategoryID VARCHAR(20) PRIMARY KEY,
    CategoryName VARCHAR(100)
);

alter table category drop column id;

CREATE TABLE playlist_in_category (
    CategoryID VARCHAR(20),
    PlaylistID VARCHAR(20),
    PRIMARY KEY (CategoryID, PlaylistID),
    FOREIGN KEY (CategoryID) REFERENCES category(CategoryID) ON DELETE CASCADE,
    FOREIGN KEY (PlaylistID) REFERENCES playlist(PlaylistID) ON DELETE CASCADE
);

CREATE TABLE userLikesSong (
    UserID VARCHAR(20),
    SongID VARCHAR(20),
    PRIMARY KEY (UserID, SongID),
    FOREIGN KEY (UserID) REFERENCES userAccount(UserID) ON DELETE CASCADE,
    FOREIGN KEY (SongID) REFERENCES song(SongID) ON DELETE CASCADE
);

CREATE TABLE Images (
	ImageID VARCHAR(20),
    primary key (ImageID),
	URL VARCHAR(50),
    Width int,
    height int
);
alter table Images modify URL VARCHAR(500);

create TABLE playlist_have_images (
	PlaylistID VARCHAR(20),
    ImageID VARCHAR(20),
    PRIMARY KEY (PlaylistID, ImageID),
	FOREIGN KEY (PlaylistID) REFERENCES playlist(PlaylistID) ON DELETE CASCADE,
    FOREIGN KEY (ImageID) REFERENCES Images(ImageID) ON DELETE CASCADE
);

create TABLE users_have_images (
	UserID VARCHAR(20),
    ImageID VARCHAR(20),
	FOREIGN KEY (UserID) REFERENCES useraccount(UserID) ON DELETE CASCADE,
    FOREIGN KEY (ImageID) REFERENCES Images(ImageID) ON DELETE CASCADE
);

create table album_have_images (
	AlbumID varchar(20),
    ImageID varchar(20),
    foreign key (AlbumID) references album(AlbumID) on DELETE cascade,
    foreign key (ImageID) references Images(ImageID) on delete cascade
);

create table song_created_by (
	SongID varchar(20),
    ArtistID varchar(20),
    foreign key (SongID) references song(SongID) on delete cascade,
    foreign key (ArtistID) references artist(ArtistID) on delete cascade
);

create table song_have_track (
	SongID varchar(20),
    foreign key (SongID) references song(SongID) on delete cascade,
    URL varchar(50),
    foreign key (URL) references RAWDATA(URL) on delete cascade,
    TrackLength int
);

create table RAWDATA (
	URL varchar(50),
    primary key (URL),
    data BLOB
);