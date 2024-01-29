CREATE DATABASE IF NOT EXISTS TEST_DBMS;

USE TEST_DBMS;

CREATE TABLE raw_data (
    url VARCHAR(50),
    data_type VARCHAR(20) NOT NULL,
    PRIMARY KEY (url),
    data BLOB
);

CREATE TABLE images (
    image_id VARCHAR(20),
    PRIMARY KEY (image_id),
    url VARCHAR(500),
    width INT,
    height INT
);

CREATE TABLE user_account (
    user_id VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    user_password VARCHAR(20) NOT NULL,
    dob DATE,
    gender CHAR(3), 
    subscription INTEGER,
    card_no VARCHAR(16) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE address_user (
    user_id VARCHAR(20),
    street VARCHAR(100),
    city VARCHAR(50),
    province VARCHAR(50),
    postal_code VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES user_account (user_id) ON DELETE CASCADE
);

CREATE TABLE users_have_images (
    user_id VARCHAR(20),
    image_id VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id) ON DELETE CASCADE,
    FOREIGN KEY (image_id) REFERENCES images(image_id) ON DELETE CASCADE,
	PRIMARY KEY (user_id, image_id)
);

CREATE TABLE artist (
    artist_id VARCHAR(20) PRIMARY KEY,
    artist_name VARCHAR(100)
);

CREATE TABLE artist_have_images (
    artist_id VARCHAR(20),
    image_id VARCHAR(20),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE,
    FOREIGN KEY (image_id) REFERENCES images(image_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, image_id)
);

CREATE TABLE album (
    album_id VARCHAR(20) PRIMARY KEY,
    artist_id VARCHAR(20),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE,
    album_name VARCHAR(100),
    album_year INTEGER
);

CREATE TABLE album_have_images (
    album_id VARCHAR(20),
    image_id VARCHAR(20),
    FOREIGN KEY (album_id) REFERENCES album(artist_id) ON DELETE CASCADE,
    FOREIGN KEY (image_id) REFERENCES images(image_id) ON DELETE CASCADE,
    PRIMARY KEY (album_id, image_id)
);

CREATE TABLE song (
    song_id VARCHAR(20),
    album_id VARCHAR(20) UNIQUE,
    FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE,
    streams INTEGER DEFAULT 0,
    song_name VARCHAR(100),
    song_length INTEGER,
    genre VARCHAR(100),
    PRIMARY KEY(song_id)
);

CREATE TABLE song_created_by (
    song_id VARCHAR(20),
    artist_id VARCHAR(20),
    FOREIGN KEY (song_id) REFERENCES song(song_id) ON DELETE CASCADE,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE,
    PRIMARY KEY (song_id, artist_id)
);

CREATE TABLE song_have_track (
    song_id VARCHAR(20),
    url VARCHAR(500),
    FOREIGN KEY (song_id) REFERENCES song(song_id) ON DELETE CASCADE,
    FOREIGN KEY (url) REFERENCES raw_data(url) ON DELETE CASCADE
);

CREATE TABLE playlist (
    user_id VARCHAR(20),
    playlist_id VARCHAR(20),
    playlist_name VARCHAR(100),
    PRIMARY KEY(playlist_id),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id) ON DELETE CASCADE
);

CREATE TABLE playlist_have_images (
    playlist_id VARCHAR(20),
    image_id VARCHAR(20),
    PRIMARY KEY (playlist_id, image_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id) ON DELETE CASCADE,
    FOREIGN KEY (image_id) REFERENCES images(image_id) ON DELETE CASCADE
);

CREATE TABLE user_have_playlists (
	user_id VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id) ON DELETE CASCADE,
    playlist_id VARCHAR(20),
    FOREIGN KEY (playlist_id) REFERENCES playlist (playlist_id) ON DELETE CASCADE,
    PRIMARY KEY(user_id, playlist_id)
);

CREATE TABLE contains (
    playlist_id VARCHAR(20),
    song_id VARCHAR(20),
    FOREIGN KEY (playlist_id) REFERENCES playlist (playlist_id) ON DELETE CASCADE,
    FOREIGN KEY (song_id) REFERENCES song (song_id) ON DELETE CASCADE
);

CREATE TABLE follows (
    user_id VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id) ON DELETE CASCADE,
    artist_id VARCHAR(20),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, artist_id)
);

CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE playlist_in_category (
    category_id VARCHAR(20),
    playlist_id VARCHAR(20),
    PRIMARY KEY (category_id, playlist_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE,
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id) ON DELETE CASCADE
);

CREATE TABLE user_likes_song (
    user_id VARCHAR(20),
    song_id VARCHAR(20),
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id) ON DELETE CASCADE,
    FOREIGN KEY (song_id) REFERENCES song(song_id) ON DELETE CASCADE
);





