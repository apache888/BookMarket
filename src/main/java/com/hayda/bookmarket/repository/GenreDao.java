package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface GenreDao extends JpaRepository<Genre, Long> {

}
