package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Author;
import com.hayda.bookmarket.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Repository
public interface AuthorDao extends JpaRepository<Author, Long> {

    @Query(value = "select a.* from author a join book_authors on author_id=a.id where book_id=?1", nativeQuery = true)
    List<Author> selectAuthorByBookId(long bookId);

}
