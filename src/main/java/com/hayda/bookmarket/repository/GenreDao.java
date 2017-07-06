package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Repository
public interface GenreDao extends JpaRepository<Genre, Long> {

    @Query(value = "select g.* from genre g join book_genres on genre_id=g.id where book_id=?1", nativeQuery = true)
    List<Genre> selectGenreByBookId(long bookId);

}
