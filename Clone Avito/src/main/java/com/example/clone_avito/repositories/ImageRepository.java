package com.example.clone_avito.repositories;

import com.example.clone_avito.entity.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image,Long> {
}
