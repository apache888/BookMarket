package com.hayda.bookmarket.controller;

import com.hayda.bookmarket.model.Order;
import com.hayda.bookmarket.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String doOrder(@ModelAttribute("order") Order order, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/bookDetails";
        }
        this.orderService.addOrder(order);
        return "redirect:/bookDetails";
    }

}
