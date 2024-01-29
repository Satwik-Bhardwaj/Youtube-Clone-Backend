package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "album")
public class Album {
    @Id
    @Column(name = "AlbumID")
    String id;

    @Column(name = "AlbumName")
    String name;

    @Column(name = "AlbumYear")
    String release_year;

    @Column(name = "Genre")
    String genre;

    @ManyToMany
    @JoinTable(
            name = "album_have_images",
            joinColumns = @JoinColumn(name = "AlbumID"),
            inverseJoinColumns = @JoinColumn(name = "ImageID")
    )
    private Set<Images> images = new HashSet<>();

    @ManyToMany
    @JoinTable(
            name = "releases",
            joinColumns = @JoinColumn(name = "AlbumID"),
            inverseJoinColumns = @JoinColumn(name = "ArtistID")
    )
    private Set<Artist> artists = new HashSet<>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRelease_year() {
        return release_year;
    }

    public void setRelease_year(String release_year) {
        this.release_year = release_year;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Set<Images> getImages() {
        return images;
    }

    public void setImages(Set<Images> images) {
        this.images = images;
    }

    public Set<Artist> getArtists() {
        return artists;
    }

    public void setArtists(Set<Artist> artists) {
        this.artists = artists;
    }
}
