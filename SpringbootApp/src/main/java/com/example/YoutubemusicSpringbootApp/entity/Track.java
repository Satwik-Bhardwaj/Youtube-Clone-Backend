package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

import static com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings.trackUrl;

@Entity
@Table(name = "song")
public class Track {
    @Id
    @Column(name = "SongID")
    String id;

    @ManyToOne
    @JoinColumn(name = "AlbumID")
    Album album;

    @ManyToMany
    @JoinTable(
            name = "song_created_by",
            joinColumns = @JoinColumn(name = "SongID"),
            inverseJoinColumns = @JoinColumn(name = "ArtistID")
    )
    Set<Artist> artists = new HashSet<>();

    @Transient
    String href;

    @Column(name = "SongName")
    String name;

    @Column(name = "Genre")
    String genre;

    @Column(name = "Streams")
    Long streams_count;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    public String getHref() {
        return trackUrl + "/" + id;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Long getStreams_count() {
        return streams_count;
    }

    public void setStreams_count(Long streams_count) {
        this.streams_count = streams_count;
    }

    public Set<Artist> getArtists() {
        return artists;
    }

    public void setArtists(Set<Artist> artists) {
        this.artists = artists;
    }
}