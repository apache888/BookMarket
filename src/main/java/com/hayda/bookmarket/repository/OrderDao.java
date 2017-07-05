package com.hayda.bookmarket.repository;

import com.hayda.bookmarket.model.Order;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created on 03.07.2017
 *
 * @author Roman Hayda
 */
@Repository
public interface OrderDao extends CrudRepository<Order, Long> {

}
