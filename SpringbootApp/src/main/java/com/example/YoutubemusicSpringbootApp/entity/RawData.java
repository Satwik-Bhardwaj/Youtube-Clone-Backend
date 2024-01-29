package com.example.YoutubemusicSpringbootApp.entity;

import jakarta.persistence.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Blob;

@Entity
@Table(name = "rawdata")
public class RawData {
    @Id
    @Column(name = "URL", nullable = false)
    private String url;

    @Lob
    @Column(name = "Data")
    private Blob data;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Blob getData() {
        return data;
    }

    public void setData(Blob data) {
        this.data = data;
    }
}
