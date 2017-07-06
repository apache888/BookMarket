package com.hayda.bookmarket.service.impl;

import com.hayda.bookmarket.model.Genre;
import com.hayda.bookmarket.repository.GenreDao;
import com.hayda.bookmarket.service.GenreService;
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
public class GenreServiceImpl implements GenreService {

    @Autowired
    private GenreDao genreDao;

    @Override
    @Transactional(readOnly = true)
    public Genre getGenreById(long id) {
        return genreDao.findOne(id);
    }

    @Override
    @Transactional
    public void addGenre(Genre genre) {
        genreDao.save(genre);
    }

    @Override
    @Transactional
    public void removeGenre(long id) {
        genreDao.delete(id);
    }

    @Override
    @Transactional
    public List<Genre> allGenres() {
        return genreDao.findAll();
    }

    @Override
    @Transactional
    public List<Genre> getGenresByBookId(long id) {
        return genreDao.selectGenreByBookId(id);
    }
}
