package com.shop.mapper;

import com.shop.pojo.BrandMoney;

public interface BrandMoneyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandMoney record);

    int insertSelective(BrandMoney record);

    BrandMoney selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BrandMoney record);

    int updateByPrimaryKey(BrandMoney record);
}