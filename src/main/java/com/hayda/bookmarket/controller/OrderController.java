package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.Order;
import com.hayda.bookmarket.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/order.do", method = RequestMethod.POST)
    public String doOrder(@ModelAttribute("order") @Validated Order order, Model model, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "redirect:/bookDetails";
        }
        this.orderService.addOrder(order);
        return "redirect:/books/"+order.getBookId();
    }

}
