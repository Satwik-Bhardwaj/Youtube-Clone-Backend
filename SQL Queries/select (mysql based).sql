USE YOUTUBE_MUSIC_DBMS;

SELECT * FROM userAccount;

SELECT * FROM userAccount WHERE Gender = 'M';

SELECT * FROM userAccount WHERE Subscription = 1;

SELECT * FROM addressUser;

SELECT * FROM addressUser WHERE UserID = 'UserID1';

SELECT * FROM artist;

SELECT * FROM artist WHERE ArtistID = 'ArtistID1';

SELECT * FROM album;

SELECT * FROM album WHERE Genre = 'Rock';

SELECT * FROM releases;

SELECT * FROM releases WHERE ArtistID = 'ArtistID1';

SELECT * FROM song;

SELECT * FROM song WHERE ArtistID = 'ArtistID2';

SELECT * FROM song WHERE AlbumID = 'AlbumID3';

SELECT * FROM playlist;

SELECT * FROM playlist WHERE UserID = 'UserID1';

SELECT * FROM contains;

SELECT * FROM contains WHERE PlaylistID = 'PlaylistID2';

SELECT * FROM follows;

SELECT * FROM follows WHERE ArtistID = 'ArtistID3';

SELECT * FROM category;

SELECT * FROM category WHERE CategoryID = 'CategoryID1';

SELECT * FROM playlist_in_category;

SELECT * FROM playlist_in_category WHERE CategoryID = 'CategoryID2';

SELECT * FROM Images;
SELECT * FROM playlist_have_images;
SELECT e2.*
FROM playlist e2
JOIN playlist_in_category hr ON e2.playlistID = hr.playlistID
WHERE hr.categoryID = 'CategoryID1';

select * FROM RAWDATA;

select * FROM SONG_HAVE_TRACK;