package com.shop.service.impl;

import com.shop.mapper.BrandOrdersMapper;
import com.shop.pojo.BrandOrders;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class BrandOrdersServiceImplTest {
    @Autowired
    private BrandOrdersMapper brandOrdersMapper;

    @Test
    public void listAll() {
        List<BrandOrders> brandOrdersList = brandOrdersMapper.listAll(new BrandOrders());
        for (BrandOrders b : brandOrdersList) {
            System.out.println(b.toString());
        }
    }
}
