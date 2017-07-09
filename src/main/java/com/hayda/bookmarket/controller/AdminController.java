package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.LetterList;
import com.hayda.bookmarket.service.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created on 05.07.2017
 *
 * @author Roman Hayda
 */
@Controller
@SessionAttributes({"genreList","letterList"})
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private GenreService genreService;
    @Autowired
    private LetterList letters;

    @RequestMapping(value = "/main")
    public String adminPage(Model model) {
        model.addAttribute("genreList", genreService.allGenres());
        model.addAttribute("letterList", letters.getRussianLetters());
        return "admin/adminPage";
    }

    @RequestMapping(value = "/books")
    public String allBook() {

        return "admin/books";
    }

    @RequestMapping(value = "/book/edit/{id}")
    public String editBook() {
        return "editBook";
    }

    @RequestMapping(value = "/genres")
    public String allGenre(Model model) {
        model.addAttribute("genres",genreService.allGenres() );
        return "admin/genres";
    }

}
