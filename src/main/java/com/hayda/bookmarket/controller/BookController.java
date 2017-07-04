package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.Book;
import com.hayda.bookmarket.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String allBooks(Model model) {
        model.addAttribute("bookList", bookService.getAllBooks());
        return "books";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") @Valid Book book, BindingResult result){
        if (result.hasErrors()) {
            return "redirect:/books";
        }
        this.bookService.addBook(book);
        return "redirect:/books";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getBookById(@PathVariable("id") long id, Model model) {
        model.addAttribute("book", bookService.getBookById(id));
        model.addAttribute("genres", bookService.getGenresByBookId(id));
        model.addAttribute("authors", bookService.getAuthorsByBookId(id));
        return "bookDetails";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String updateBook(@PathVariable("id") long id, Model model) {
        model.addAttribute("book", bookService.getBookById(id));
        model.addAttribute("bookList", bookService.getAllBooks());
        return "books";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable("id") long id) {
        this.bookService.removeBook(id);
        return "redirect:/books";
    }
}
