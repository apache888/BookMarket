package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by upsite on 05.07.2017.
 */
@Controller
public class TestController {
    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/test/{id}",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody

    public Object test(@PathVariable("id") long id){
        return bookService.getBookById(id).toString();
    }

    @RequestMapping(value = "/test2/{id}",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    @Transactional
    public Object test2(@PathVariable("id") long id){
        return bookService.getBookById(id).toString();
    }
}
