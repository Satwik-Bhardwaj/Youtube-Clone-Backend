package com.example.YoutubemusicSpringbootApp.repository;

import com.example.YoutubemusicSpringbootApp.entity.Playlist;
import com.example.YoutubemusicSpringbootApp.entity.PlaylistsByCategory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PlaylistsByCategoryRepository extends CrudRepository<PlaylistsByCategory, String> {
//    @Query("SELECT p FROM Playlist p WHERE p.id = :categoryId")
//    List<Playlist> findByCategoriesCategoryID(@Param("categoryId") String id);

}
