package com.hayda.bookmarket.service.impl;

import com.hayda.bookmarket.model.Order;
import com.hayda.bookmarket.repository.OrderDao;
import com.hayda.bookmarket.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public void addOrder(Order order) {
        orderDao.save(order);
    }
}
