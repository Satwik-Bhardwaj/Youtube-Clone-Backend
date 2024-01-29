package com.example.YoutubemusicSpringbootApp.entity;

import com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "category")
public class PlaylistsByCategory{

    @JsonIgnore
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CategoryId")
    private String id;

    @Transient
    String href;

    @ManyToMany
    @JoinTable(
            name = "playlist_in_category",
            joinColumns = @JoinColumn(name = "CategoryID"),
            inverseJoinColumns = @JoinColumn(name = "PlaylistID")
    )
    private Set<Playlist> items = new HashSet<>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Set<Playlist> getItems() {
        return items;
    }

    public void setItems(Set<Playlist> items) {
        this.items = items;
    }

    public String getHref() {
        return GeneralStrings.categoryUri + "/" + id + "/playlists";
    }

    public void setHref(String href) {
        this.href = href;
    }
}