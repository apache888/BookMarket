package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.Order;
import com.hayda.bookmarket.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/order.do")
    public String doOrder(@RequestParam("firstName") String firstName,
                          @RequestParam("lastName") String lastName,
                          @RequestParam("address") String address,
                          @RequestParam("quantity") String quantity,
                          @RequestParam("bookId") String bookId, Model model) {
        Order order = new Order();
        order.setFirstName(firstName);
        order.setLastName(lastName);
        order.setAddress(address);
        order.setQuantity(Integer.valueOf(quantity));
        order.setBookId(Long.valueOf(bookId));
        this.orderService.addOrder(order);
        return "redirect:/bookDetails";
    }

}
