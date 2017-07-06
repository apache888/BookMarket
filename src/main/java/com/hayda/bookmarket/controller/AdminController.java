package com.hayda.bookmarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created on 05.07.2017
 *
 * @author Roman Hayda
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping(value = "/main")
    public String adminPage() {
        return "adminPage";
    }


    @RequestMapping(value = "/book/edit/{id}")
    public String editBook() {
        return "editBook";
    }

}
