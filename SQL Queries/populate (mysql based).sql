USE YOUTUBE_MUSIC_DBMS;

INSERT INTO userAccount (UserID, Email, UserPassword, Dob, Gender, Subscription, CardNo) VALUES (
    '1g3d6u3e4sqxx456rtyu',
    'satwik@gmail.com',
    'pass123',
    '2003-02-02',
    'M',
    -1,
    'NA'
);
INSERT INTO userAccount (UserID, Email, UserPassword, Dob, Gender, Subscription, CardNo) VALUES
('UserID1', 'user1@example.com', 'password1', '1990-01-15', 'M', 1, '1234567812345678'),
('UserID2', 'user2@example.com', 'password2', '1995-04-22', 'F', 0, '8765432187654321'),
('UserID3', 'user3@example.com', 'password3', '1988-09-10', 'M', 1, '5678123456781234'),
('UserID4', 'user4@example.com', 'password4', '1992-07-05', 'F', 0, '9876543219876543'),
('UserID5', 'user5@example.com', 'password5', '1985-11-30', 'M', 1, '3456781234567812'),
('UserID6', 'user6@example.com', 'password6', '1998-03-18', 'F', 0, '2345678123456781'),
('UserID7', 'user7@example.com', 'password7', '1994-06-25', 'M', 1, '4567812345678123'),
('UserID8', 'user8@example.com', 'password8', '1987-12-04', 'F', 0, '6543219876543219'),
('UserID9', 'user9@example.com', 'password9', '1991-08-12', 'M', 1, '5678123456781234'),
('UserID10', 'user10@example.com', 'password10', '1997-02-28', 'F', 0, '1234567812345678'),
('UserID11', 'user11@example.com', 'password11', '1993-10-20', 'M', 1, '9876543219876543'),
('UserID12', 'user12@example.com', 'password12', '1986-05-08', 'F', 0, '3456781234567812'),
('UserID13', 'user13@example.com', 'password13', '1999-09-03', 'M', 1, '2345678123456781'),
('UserID14', 'user14@example.com', 'password14', '1996-04-14', 'F', 0, '4567812345678123'),
('UserID15', 'user15@example.com', 'password15', '1989-08-29', 'M', 1, '6543219876543219'),
('UserID16', 'user16@example.com', 'password16', '1994-01-02', 'F', 0, '5678123456781234'),
('UserID17', 'user17@example.com', 'password17', '1990-07-19', 'M', 1, '1234567812345678'),
('UserID18', 'user18@example.com', 'password18', '1998-11-11', 'F', 0, '9876543219876543'),
('UserID19', 'user19@example.com', 'password19', '1984-06-15', 'M', 1, '3456781234567812'),
('UserID20', 'user20@example.com', 'password20', '1997-03-30', 'F', 0, '2345678123456781');

INSERT INTO addressUser (UserID, Street, City, Province, PostalCode) VALUES
('UserID1', '123 Main St', 'City1', 'Province1', 'A1B 2C3'),
('UserID2', '456 Elm St', 'City2', 'Province2', 'X0Y 1Z2'),
('UserID3', '789 Oak St', 'City3', 'Province3', 'M5N 9P8'),
('UserID4', '456 Pine St', 'City4', 'Province4', 'K3L 6Q7'),
('UserID5', '890 Birch St', 'City5', 'Province5', 'V7T 2W6'),
('UserID6', '234 Cedar St', 'City6', 'Province6', 'R6X 4U5'),
('UserID7', '567 Maple St', 'City7', 'Province7', 'H9J 3K2'),
('UserID8', '678 Willow St', 'City8', 'Province8', 'G2S 8V1'),
('UserID9', '345 Redwood St', 'City9', 'Province9', 'P1M 7L4'),
('UserID10', '789 Magnolia St', 'City10', 'Province10', 'L4W 5K9'),
('UserID11', '234 Spruce St', 'City11', 'Province11', 'N2H 1R3'),
('UserID12', '456 Oakwood St', 'City12', 'Province12', 'T8P 3E5'),
('UserID13', '890 Pinecrest St', 'City13', 'Province13', 'B3V 9G6'),
('UserID14', '123 Cedarwood St', 'City14', 'Province14', 'E7X 2N1'),
('UserID15', '567 Elmwood St', 'City15', 'Province15', 'Y6M 8R4'),
('UserID16', '678 Willowcrest St', 'City16', 'Province16', 'J1K 4L7'),
('UserID17', '234 Redwoodwood St', 'City17', 'Province17', 'S4B 6P2'),
('UserID18', '890 Oakcrest St', 'City18', 'Province18', 'C2T 1Q8'),
('UserID19', '456 Pinecrestwood St', 'City19', 'Province19', 'K9L 3S5'),
('UserID20', '123 Birchwood St', 'City20', 'Province20', 'V5N 7T9');

INSERT INTO artist (ArtistID, ArtistName) VALUES
('ArtistID1', 'Artist1'),
('ArtistID2', 'Artist2'),
('ArtistID3', 'Artist3'),
('ArtistID4', 'Artist4'),
('ArtistID5', 'Artist5'),
('ArtistID6', 'Artist6'),
('ArtistID7', 'Artist7'),
('ArtistID8', 'Artist8'),
('ArtistID9', 'Artist9'),
('ArtistID10', 'Artist10'),
('ArtistID11', 'Artist11'),
('ArtistID12', 'Artist12'),
('ArtistID13', 'Artist13'),
('ArtistID14', 'Artist14'),
('ArtistID15', 'Artist15'),
('ArtistID16', 'Artist16'),
('ArtistID17', 'Artist17'),
('ArtistID18', 'Artist18'),
('ArtistID19', 'Artist19'),
('ArtistID20', 'Artist20');

INSERT INTO album (AlbumID, AlbumName, AlbumYear, Genre) VALUES
('AlbumID1', 'Album1', 2020, 'Pop'),
('AlbumID2', 'Album2', 2018, 'Rock'),
('AlbumID3', 'Album3', 2021, 'Hip-Hop'),
('AlbumID4', 'Album4', 2019, 'R&B'),
('AlbumID5', 'Album5', 2022, 'Electronic'),
('AlbumID6', 'Album6', 2017, 'Country'),
('AlbumID7', 'Album7', 2015, 'Jazz'),
('AlbumID8', 'Album8', 2016, 'Blues'),
('AlbumID9', 'Album9', 2023, 'Classical'),
('AlbumID10', 'Album10', 2014, 'Reggae'),
('AlbumID11', 'Album11', 2011, 'Alternative'),
('AlbumID12', 'Album12', 2013, 'Funk'),
('AlbumID13', 'Album13', 2023, 'Indie'),
('AlbumID14', 'Album14', 2012, 'Metal'),
('AlbumID15', 'Album15', 2010, 'Rap'),
('AlbumID16', 'Album16', 2022, 'Pop'),
('AlbumID17', 'Album17', 2009, 'Rock'),
('AlbumID18', 'Album18', 2008, 'Hip-Hop'),
('AlbumID19', 'Album19', 2020, 'R&B'),
('AlbumID20', 'Album20', 2007, 'Electronic');

INSERT INTO releases (AlbumID, ArtistID) VALUES
('AlbumID1', 'ArtistID1'),
('AlbumID2', 'ArtistID2'),
('AlbumID3', 'ArtistID3'),
('AlbumID4', 'ArtistID4'),
('AlbumID5', 'ArtistID5'),
('AlbumID6', 'ArtistID6'),
('AlbumID7', 'ArtistID7'),
('AlbumID8', 'ArtistID8'),
('AlbumID9', 'ArtistID9'),
('AlbumID10', 'ArtistID10'),
('AlbumID11', 'ArtistID11'),
('AlbumID12', 'ArtistID12'),
('AlbumID13', 'ArtistID13'),
('AlbumID14', 'ArtistID14'),
('AlbumID15', 'ArtistID15'),
('AlbumID16', 'ArtistID16'),
('AlbumID17', 'ArtistID17'),
('AlbumID18', 'ArtistID18'),
('AlbumID19', 'ArtistID19'),
('AlbumID20', 'ArtistID20');

INSERT INTO song (SongID, ArtistID, AlbumID, Streams, SongName, SongLength, Genre) VALUES
('SongID1', 'ArtistID1', 'AlbumID1', 1000, 'Song1', 240, 'Pop'),
('SongID2', 'ArtistID2', 'AlbumID2', 800, 'Song2', 180, 'Rock'),
('SongID3', 'ArtistID3', 'AlbumID3', 1200, 'Song3', 210, 'Hip-Hop'),
('SongID4', 'ArtistID4', 'AlbumID4', 1500, 'Song4', 220, 'R&B'),
('SongID5', 'ArtistID5', 'AlbumID5', 900, 'Song5', 270, 'Electronic'),
('SongID6', 'ArtistID6', 'AlbumID6', 600, 'Song6', 190, 'Country'),
('SongID7', 'ArtistID7', 'AlbumID7', 700, 'Song7', 320, 'Jazz'),
('SongID8', 'ArtistID8', 'AlbumID8', 1100, 'Song8', 250, 'Blues'),
('SongID9', 'ArtistID9', 'AlbumID9', 800, 'Song9', 230, 'Classical'),
('SongID10', 'ArtistID10', 'AlbumID10', 1300, 'Song10', 200, 'Reggae'),
('SongID11', 'ArtistID11', 'AlbumID11', 900, 'Song11', 210, 'Alternative'),
('SongID12', 'ArtistID12', 'AlbumID12', 950, 'Song12', 280, 'Funk'),
('SongID13', 'ArtistID13', 'AlbumID13', 1200, 'Song13', 240, 'Indie'),
('SongID14', 'ArtistID14', 'AlbumID14', 800, 'Song14', 210, 'Metal'),
('SongID15', 'ArtistID15', 'AlbumID15', 1100, 'Song15', 220, 'Rap'),
('SongID16', 'ArtistID16', 'AlbumID16', 1000, 'Song16', 290, 'Pop'),
('SongID17', 'ArtistID17', 'AlbumID17', 750, 'Song17', 260, 'Rock'),
('SongID18', 'ArtistID18', 'AlbumID18', 900, 'Song18', 240, 'Hip-Hop'),
('SongID19', 'ArtistID19', 'AlbumID19', 950, 'Song19', 270, 'R&B'),
('SongID20', 'ArtistID20', 'AlbumID20', 800, 'Song20', 230, 'Electronic');

INSERT INTO playlist (UserID, PlaylistID, PlaylistName) VALUES
('UserID1', 'PlaylistID1', 'My Playlist 1'),
('UserID2', 'PlaylistID2', 'Favorite Songs'),
('UserID3', 'PlaylistID3', 'Road Trip Mix'),
('UserID4', 'PlaylistID4', 'Chill Vibes'),
('UserID5', 'PlaylistID5', 'Workout Jams'),
('UserID6', 'PlaylistID6', 'Party Hits'),
('UserID7', 'PlaylistID7', 'Acoustic Sounds'),
('UserID8', 'PlaylistID8', '90s Classics'),
('UserID9', 'PlaylistID9', 'Indie Gems'),
('UserID10', 'PlaylistID10', 'Rock Anthems'),
('UserID11', 'PlaylistID11', 'Hip-Hop Beats'),
('UserID12', 'PlaylistID12', 'Relaxation'),
('UserID13', 'PlaylistID13', 'Country Hits'),
('UserID14', 'PlaylistID14', 'Jazz Masters'),
('UserID15', 'PlaylistID15', 'Blues Collection'),
('UserID16', 'PlaylistID16', 'Classical Beauty'),
('UserID17', 'PlaylistID17', 'Reggae Grooves'),
('UserID18', 'PlaylistID18', 'Alternative Vibes'),
('UserID19', 'PlaylistID19', 'Funky Tunes'),
('UserID20', 'PlaylistID20', 'Metal Madness');

INSERT INTO contains (PlaylistID, SongID) VALUES
('PlaylistID1', 'SongID1'),
('PlaylistID2', 'SongID2'),
('PlaylistID3', 'SongID3'),
('PlaylistID4', 'SongID4'),
('PlaylistID5', 'SongID5'),
('PlaylistID6', 'SongID6'),
('PlaylistID7', 'SongID7'),
('PlaylistID8', 'SongID8'),
('PlaylistID9', 'SongID9'),
('PlaylistID10', 'SongID10'),
('PlaylistID11', 'SongID11'),
('PlaylistID12', 'SongID12'),
('PlaylistID13', 'SongID13'),
('PlaylistID14', 'SongID14'),
('PlaylistID15', 'SongID15'),
('PlaylistID16', 'SongID16'),
('PlaylistID17', 'SongID17'),
('PlaylistID18', 'SongID18'),
('PlaylistID19', 'SongID19'),
('PlaylistID20', 'SongID20');

INSERT INTO follows (UserID, ArtistID, Followers, Followering) VALUES
('UserID1', 'ArtistID1', 1000, 500),
('UserID2', 'ArtistID2', 800, 300),
('UserID3', 'ArtistID3', 1200, 700),
('UserID4', 'ArtistID4', 1500, 900),
('UserID5', 'ArtistID5', 900, 400),
('UserID6', 'ArtistID6', 600, 200),
('UserID7', 'ArtistID7', 700, 300),
('UserID8', 'ArtistID8', 1100, 600),
('UserID9', 'ArtistID9', 800, 300),
('UserID10', 'ArtistID10', 1300, 700),
('UserID11', 'ArtistID11', 900, 400),
('UserID12', 'ArtistID12', 950, 450),
('UserID13', 'ArtistID13', 1200, 600),
('UserID14', 'ArtistID14', 800, 300),
('UserID15', 'ArtistID15', 1100, 500),
('UserID16', 'ArtistID16', 1000, 400),
('UserID17', 'ArtistID17', 750, 300),
('UserID18', 'ArtistID18', 900, 400),
('UserID19', 'ArtistID19', 950, 450),
('UserID20', 'ArtistID20', 800, 350);

INSERT INTO category (CategoryID, CategoryName) VALUES
('CategoryID1', 'Category1'),
('CategoryID2', 'Category2'),
('CategoryID3', 'Category3'),
('CategoryID4', 'Category4'),
('CategoryID5', 'Category5'),
('CategoryID6', 'Category6'),
('CategoryID7', 'Category7'),
('CategoryID8', 'Category8'),
('CategoryID9', 'Category9'),
('CategoryID10', 'Category10'),
('CategoryID11', 'Category11'),
('CategoryID12', 'Category12'),
('CategoryID13', 'Category13'),
('CategoryID14', 'Category14'),
('CategoryID15', 'Category15'),
('CategoryID16', 'Category16'),
('CategoryID17', 'Category17'),
('CategoryID18', 'Category18'),
('CategoryID19', 'Category19'),
('CategoryID20', 'Category20');

INSERT INTO playlist_in_category (CategoryID, PlaylistID) VALUES
('CategoryID1', 'PlaylistID11');


INSERT INTO Images values ('ImageID1', 'https://i.pinimg.com/564x/81/10/0b/81100bb430d71a42eb1233729eeff91d.jpg', 1920, 1080);
INSERT INTO Images values('ImageIDAlbum', 'https://img.freepik.com/free-psd/music-album-poster-with-dust-effect_23-2148742107.jpg', 1920, 1080);

INSERT INTO playlist_have_images VALUES ('PlaylistID11', 'ImageID1');
INSERT INTO album_have_images values ('AlbumID10', 'ImageIDAlbum');
INSERT INTO song_created_by values ('SongID20', 'ArtistID2');


DELETE FROM Images WHERE ImageID = 'ImageID1';