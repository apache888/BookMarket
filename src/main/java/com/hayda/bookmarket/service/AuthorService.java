package com.hayda.bookmarket.service;

import com.hayda.bookmarket.model.Author;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface AuthorService {

    Author getAuthorById(long id);

    void addAuthor(Author author);

    void removeAuthor(long id);

    List<Author> allAuthors();

}
