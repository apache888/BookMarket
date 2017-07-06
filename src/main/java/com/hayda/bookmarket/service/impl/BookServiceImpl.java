package com.hayda.bookmarket.service.impl;

import com.hayda.bookmarket.model.Book;
import com.hayda.bookmarket.repository.BookDao;
import com.hayda.bookmarket.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;

    @Override
    @Transactional(readOnly = true)
    public Book getBookById(long id) {
        return bookDao.findOne(id);
    }

    @Override
    @Transactional
    public void addBook(Book book) {
        bookDao.save(book);
    }

    @Override
    @Transactional
    public void removeBook(long id) {
        bookDao.delete(id);
    }

    @Override
    @Transactional
    public List<Book> getAllBooks() {
        return bookDao.findAll();
    }

    @Override
    @Transactional
    public List<Book> getBooksByGenre(Long genreId) {
        return bookDao.selectBooksByGenre(genreId);
    }

    @Override
    @Transactional
    public List<Book> getBooksByLetter(String letter) {
        return bookDao.selectBooksByLetter(letter);
    }

    @Override
    @Transactional
    public List<Book> getBooksBySearch(String searchString) {
        return bookDao.selectBooksBySearch(searchString);
    }
}
