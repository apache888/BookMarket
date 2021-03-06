package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.LetterList;
import com.hayda.bookmarket.repository.GenreDao;
import com.hayda.bookmarket.service.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.annotation.SessionScope;

/**
 * Created on 04.07.2017
 *
 * @author Roman Hayda
 */
@Controller
@SessionAttributes({"username","genreList","letterList"})
@SessionScope
public class MainController {
    @Autowired
    private GenreService genreService;
    @Autowired
    private LetterList letters;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/main")
    public String main(@RequestParam(value = "username", required = false)String userName, Model model) {
        model.addAttribute( "username", userName);
        model.addAttribute("genreList", genreService.allGenres());
        model.addAttribute("letterList", letters.getRussianLetters());
        model.addAttribute("latinsList", letters.getLatinLetters());

        return "main";
    }

}
