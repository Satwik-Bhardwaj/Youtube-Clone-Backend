package com.example.YoutubemusicSpringbootApp.repository;

import com.example.YoutubemusicSpringbootApp.entity.Category;
import com.example.YoutubemusicSpringbootApp.entity.Playlist;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaylistRepository extends CrudRepository<Playlist, String> {
}
