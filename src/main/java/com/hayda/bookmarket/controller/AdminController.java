package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.Author;
import com.hayda.bookmarket.model.Book;
import com.hayda.bookmarket.model.Genre;
import com.hayda.bookmarket.model.LetterList;
import com.hayda.bookmarket.service.AuthorService;
import com.hayda.bookmarket.service.BookService;
import com.hayda.bookmarket.service.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    private BookService bookService;
    @Autowired
    private GenreService genreService;
    @Autowired
    private AuthorService authorService;
    @Autowired
    private LetterList letters;

    @RequestMapping(value = "/main")
    public String adminPage(Model model) {
        model.addAttribute("genreList", genreService.allGenres());
        model.addAttribute("letterList", letters.getRussianLetters());
        return "admin/adminPage";
    }

    //Book
    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String allBooks(Model model,
                           @RequestParam(value = "search_string", required = false, defaultValue = "")String searchString,
                           @RequestParam(value = "genre_id", required = false, defaultValue = "") String genreId,
                           @RequestParam(value = "letter", required = false, defaultValue = "") String letter) {

        List<Book> list;
        model.addAttribute("book", new Book());
        if (!searchString.isEmpty()){
            model.addAttribute("searchString", searchString);
            list = bookService.getBooksBySearch(searchString);
            model.addAttribute("bookList", list);
            return "admin/books";
        }else
        if (!genreId.isEmpty() && Long.valueOf(genreId) != 0){
            model.addAttribute("genreId", genreId);
            list = bookService.getBooksByGenre(Long.valueOf(genreId));
            model.addAttribute("bookList", list);
            return "admin/books";
        }else
        if (!letter.isEmpty()){
            model.addAttribute("letter", letter);
            list = bookService.getBooksByLetter(letter);
            model.addAttribute("bookList", list);
            return "admin/books";
        } else{
            model.addAttribute("bookList", bookService.getAllBooks());
            return "admin/books";
        }
    }

    @RequestMapping(value = "/book/edit/{id}")
    public String editBook() {
        return "editBook";
    }

    //Genre
    @RequestMapping(value = "/genres", method = RequestMethod.GET)
    public String allGenres(Model model) {
        model.addAttribute("genre", new Genre());
        model.addAttribute("genres",genreService.allGenres() );
        return "admin/genres";
    }

    @RequestMapping(value = "/genres/delete/{id}")
    public String deleteGenre(@PathVariable long id, Model model) {
        genreService.removeGenre(id);
        return "redirect:/admin/genres";
    }

    @RequestMapping(value = "/genres", method = RequestMethod.POST)
    public String addGenre(@ModelAttribute("genre") Genre genre, Model model) {
        genreService.addGenre(genre);
        return "redirect:/admin/genres";
    }

    @RequestMapping(value = "/genres/edit/{id}")
    public String updateGenre(@PathVariable long id, Model model) {
        model.addAttribute("genre", genreService.getGenreById(id));
        model.addAttribute("genres",genreService.allGenres() );
        return "admin/genres";
    }

    //Author
    @RequestMapping(value = "/authors", method = RequestMethod.GET)
    public String allAuthors(Model model) {
        model.addAttribute("author", new Author());
        model.addAttribute("authors",authorService.allAuthors() );
        return "admin/authors";
    }

    @RequestMapping(value = "/authors/delete/{id}")
    public String deleteAuthor(@PathVariable long id, Model model) {
        authorService.removeAuthor(id);
        return "redirect:/admin/authors";
    }

    @RequestMapping(value = "/authors", method = RequestMethod.POST)
    public String addAuthor(@ModelAttribute("author") Author author, Model model) {
        authorService.addAuthor(author);
        return "redirect:/admin/authors";
    }

    @RequestMapping(value = "/authors/edit/{id}")
    public String updateAuthor(@PathVariable long id, Model model) {
        model.addAttribute("author", authorService.getAuthorById(id));
        model.addAttribute("authors",authorService.allAuthors() );
        return "admin/authors";
    }
}
