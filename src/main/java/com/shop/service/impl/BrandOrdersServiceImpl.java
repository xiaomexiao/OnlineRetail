package com.shop.service.impl;

import com.shop.mapper.BrandOrdersMapper;
import com.shop.pojo.BrandOrders;
import com.shop.service.BrandOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BrandOrdersServiceImpl implements BrandOrdersService {
    @Autowired
    private BrandOrdersMapper brandOrdersMapper;

    public ArrayList<BrandOrders> listAll(BrandOrders brandOrders) {
        return brandOrdersMapper.listAll(brandOrders);
    }
}
