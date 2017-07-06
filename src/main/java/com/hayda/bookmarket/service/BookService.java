package com.hayda.bookmarket.service;

import com.hayda.bookmarket.model.Book;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface BookService {

    Book getBookById(long id);

    void addBook(Book book);

    void removeBook(long id);

    List<Book> getAllBooks();

    List<Book> getBooksByGenre(Long genreId);

    List<Book> getBooksByLetter(String letter);

    List<Book> getBooksBySearch(String searchString);
}
