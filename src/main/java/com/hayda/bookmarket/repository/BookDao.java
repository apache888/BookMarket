package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Book;
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
public interface BookDao extends JpaRepository<Book, Long> {

//    @Query(value = "select g.* from genre g join book_genres on genre_id=g.id where book_id = ?1", nativeQuery = true)
//    List<Genre> selectGenreByBookId(long id);
//
//    @Query(value = "select a.* from author a join book_authors on author_id=a.id where book_id = ?1", nativeQuery = true)
//    List<Author> selectAuthorByBookId(long id);


//    @Override
//    @Query("select b from Book b, Genre g, Autor a left join fetch b.genreList on g.id = id" +
//            " join fetch b.authorList on a.id = id where b.id= ?1")
//    Book findOne(Long id);

    @Query(value = "select b.* from book b join book_genres on book_id=b.id where genre_id =?1 order by b.name limit 0,10", nativeQuery = true)
    List<Book> selectBooksByGenre(Long genreId);

    @Query(value = "select b.* from book b where substr(b.name,1,1)=?1 order by b.name limit 0,10", nativeQuery = true)
    List<Book> selectBooksByLetter(String letter);

    @Query(value = "select b.* from book b where b.name like %:search% order by b.name limit 0,10", nativeQuery = true)
    List<Book> selectBooksBySearch(@Param("search") String searchString);
}