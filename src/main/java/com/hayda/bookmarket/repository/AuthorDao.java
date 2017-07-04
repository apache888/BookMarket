package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Author;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
public interface AuthorDao extends JpaRepository<Author, Long> {

}
