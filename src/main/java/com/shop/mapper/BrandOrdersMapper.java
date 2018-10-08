package com.shop.mapper;

import com.shop.pojo.BrandOrders;

public interface BrandOrdersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandOrders record);

    int insertSelective(BrandOrders record);

    BrandOrders selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BrandOrders record);

    int updateByPrimaryKey(BrandOrders record);
}