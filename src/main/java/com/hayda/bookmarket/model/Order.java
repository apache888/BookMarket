package com.hayda.bookmarket.model;

import javax.persistence.*;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Entity
@Table(name = "order")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name", nullable=false)
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(nullable = false)
    private String address;

    @ManyToOne
    @JoinColumn(name="book_id", nullable=false, referencedColumnName="id")
    private Book bookId;

    @Column(nullable = false)
    private int quantity;

    public Order() {
    }
}
