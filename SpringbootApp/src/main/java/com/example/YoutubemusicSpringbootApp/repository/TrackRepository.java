package com.example.YoutubemusicSpringbootApp.repository;

import com.example.YoutubemusicSpringbootApp.entity.Track;
import org.springframework.data.repository.CrudRepository;

public interface TrackRepository extends CrudRepository<Track, String> {
}
