package com.example.YoutubemusicSpringbootApp.entity;

import com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column( name = "CategoryId" )
    private String id;

    @Column(name = "CategoryName")
    private String name;

    @Transient
    private String href;



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

    public String getHref() {
        return GeneralStrings.domainName+"/v1/browse/categories/" + id;
    }

}