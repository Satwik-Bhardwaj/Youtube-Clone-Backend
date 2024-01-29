package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

import static com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings.*;

@Entity
@Table(name = "userAccount")
class Owner{

    @Id
    @Column(name = "UserID")
    private String id;

    @Transient
    private String display_name;

    @Transient
    private String href;

    public String getId() {
        return id;
    }

    public String getDisplay_name() {
        return id;
    }

    public String getHref() {
        return users+"/"+id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDisplay_name(String display_name) {
        this.display_name = display_name;
    }

    public void setHref(String href) {
        this.href = href;
    }
}

@Entity
@Table(name = "playlist")
public class Playlist {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PlaylistID")
    private String id;

    @Column(name = "PlaylistName")
    private String name;

    @Transient
    private String type;

    @ManyToOne
    @JoinColumn(name = "UserID")
    private Owner owner;

    @Transient
    private String href;

    @ManyToMany(mappedBy = "items")
    private Set<PlaylistsByCategory> categories = new HashSet<>();

    @ManyToMany
    @JoinTable(
            name = "playlist_have_images",
            joinColumns = @JoinColumn(name = "PlaylistID"),
            inverseJoinColumns = @JoinColumn(name = "ImageID")
    )
    private Set<Images> images = new HashSet<>();

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

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public String getHref() {
        return playlistUri + "/" + id;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public Set<Images> getImages() {
        return images;
    }

    public void setImages(Set<Images> images) {
        this.images = images;
    }

    public String getType() {
        return "playlist";
    }

    public void setType(String type) {
        this.type = "playlist";
    }
}
