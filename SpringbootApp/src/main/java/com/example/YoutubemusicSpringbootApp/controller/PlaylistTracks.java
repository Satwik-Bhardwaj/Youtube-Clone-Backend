package com.example.YoutubemusicSpringbootApp.controller;

import com.example.YoutubemusicSpringbootApp.entity.Track;
import com.example.YoutubemusicSpringbootApp.repository.TrackRepository;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

import static com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings.playlistUri;

@Entity
@Table(name = "playlist")
public class PlaylistTracks {

    @JsonIgnore
    @Id
    @Column(name = "PlaylistID")
    String id;

    String href;

    @ManyToMany
    @JoinTable(
            name = "contains",
            joinColumns = @JoinColumn(name = "PlaylistID"),
            inverseJoinColumns = @JoinColumn(name = "SongID")
    )
    Set<Track> items = new HashSet<>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHref() {
        return playlistUri + "/" + id + "/tracks";
    }

    public void setHref(String href) {
        this.href = href;
    }

    public Set<Track> getItems() {
        return items;
    }

    public void setItems(Set<Track> items) {
        this.items = items;
    }
}


