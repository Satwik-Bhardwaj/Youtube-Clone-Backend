package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "images")
public class Images {
    @Id
    @Column(name = "ImageID")
    private String id;

    @Column(name = "URL")
    private String url;

    @Column(name = "Height")
    int height;

    @Column(name = "Width")
    int width;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

}
