package com.hayda.bookmarket.service;

import com.hayda.bookmarket.model.Genre;

import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface GenreService {

    Genre getGenreById(long id);

    void addGenre(Genre genre);

    void removeGenre(long id);

    List<Genre> allGenres();

    List<Genre> getGenresByBookId(long id);
}
