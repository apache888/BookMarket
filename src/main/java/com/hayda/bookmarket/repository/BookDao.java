package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Author;
import com.hayda.bookmarket.model.Book;
import com.hayda.bookmarket.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface BookDao extends JpaRepository<Book, Long> {

    @Query(value = "select g.* from genre g join book_genres on genre_id=g.id and book_id = :id", nativeQuery = true)
    List<Genre> getGenresByBookId(@Param("id") long id);

    @Query(value = "select a.* from author a join book_authors on author_id=a.id and book_id = :id", nativeQuery = true)
    List<Author> getAuthorsByBookId(@Param("id") long id);

}
