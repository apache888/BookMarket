package com.hayda.bookmarket.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Entity
@Table(name = "book")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String name;

    @Column
    private String description;

    @ManyToMany
    @JoinTable(name="book_genres",
            joinColumns= @JoinColumn(name="book_id", referencedColumnName="id"),
            inverseJoinColumns= @JoinColumn(name="genre_id", referencedColumnName="id")
    )
    private List<Genre> genreList;

    @ManyToMany
    @JoinTable(name="book_authors",
            joinColumns= @JoinColumn(name="book_id", referencedColumnName="id"),
            inverseJoinColumns= @JoinColumn(name="author_id", referencedColumnName="id")
    )
    private List<Author> authorList;

    @Column
    private double price;

    public Book() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Genre> getGenreList() {
        return genreList;
    }

    public void setGenreList(List<Genre> genreList) {
        this.genreList = genreList;
    }

    public List<Author> getAuthorList() {
        return authorList;
    }

    public void setAuthorList(List<Author> authorList) {
        this.authorList = authorList;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Book{\n" +
                "id: " + id + "\n," +
                "Title: " + name + "\n," +
                "Description: '" + description + "\'\n," +
                "Genre: " + genreList + "\n," +
                "Author(s): " + authorList +
                "Price: " + price + "\n" +
                '}';
    }
}
