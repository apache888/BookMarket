package com.hayda.bookmarket.service.impl;

import com.hayda.bookmarket.model.Author;
import com.hayda.bookmarket.repository.AuthorDao;
import com.hayda.bookmarket.service.AuthorService;
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
public class AuthorServiceImpl implements AuthorService {

    @Autowired
    private AuthorDao authorDao;

    @Override
    @Transactional(readOnly = true)
    public Author getAuthorById(long id) {
        return authorDao.findOne(id);
    }

    @Override
    @Transactional
    public void addAuthor(Author author) {
        authorDao.save(author);
    }

    @Override
    @Transactional
    public void removeAuthor(long id) {
        authorDao.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Author> allAuthors() {
        return authorDao.findAll();
    }

    @Override
    @Transactional
    public List<Author> getAuthorByBookId(long id) {
        return authorDao.selectAuthorByBookId(id);
    }
}
