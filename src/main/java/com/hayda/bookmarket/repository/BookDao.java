package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Author;
import com.hayda.bookmarket.model.Book;
import com.hayda.bookmarket.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface BookDao extends JpaRepository<Book, Long> {

    @Query(value = "select g.* from genre g join book_genres on genre_id=g.id where book_id = ?1", nativeQuery = true)
    List<Genre> selectGenreByBookId(long id);

    @Query(value = "select a.* from author a join book_authors on author_id=a.id where book_id = ?1", nativeQuery = true)
    List<Author> selectAuthorByBookId(long id);

    @Query(value = "select b.* from book b join book_genres on book_id=b.id where genre_id =?1 order by b.name limit 0,5", nativeQuery = true)
    List<Book> selectBooksByGenre(Long genreId);

    @Query(value = "select b.* from book b where substr(b.name,1,1)=?1 order by b.name limit 0,5", nativeQuery = true)
    List<Book> selectBooksByLetter(String letter);

    @Query(value = "select b.* from book b where b.name like '%?1%' order by b.name limit 0,5", nativeQuery = true)
    List<Book> selectBooksBySearch(String searchString);
}