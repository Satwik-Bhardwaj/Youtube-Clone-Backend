package com.example.YoutubemusicSpringbootApp.repository;

import com.example.YoutubemusicSpringbootApp.entity.RawData;
import org.springframework.data.repository.CrudRepository;

public interface RawDataRepository extends CrudRepository<RawData, String> {
}
