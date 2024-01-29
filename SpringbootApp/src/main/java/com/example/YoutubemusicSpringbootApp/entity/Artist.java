package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;

import java.util.HashSet;

import static com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings.albumUrl;

@Entity
@Table(name = "artist")
public class Artist {
    @Id
    @Column(name = "ArtistID")
    String id;

    @Transient
    String href;

    @Column(name = "ArtistName")
    String name;

    @Transient
    String type;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHref() {
        return albumUrl + "/" + id;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getName() {
        return name;
    }

    public void setName() {
        this.name = "artist";
    }

    public String getType() {
        return "artist";
    }

    public void setType(String type) {
        this.type = type;
    }
}

