package com.shop.mapper;

import com.shop.pojo.BrandGoods;

public interface BrandGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandGoods record);

    int insertSelective(BrandGoods record);

    BrandGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BrandGoods record);

    int updateByPrimaryKey(BrandGoods record);
}