package com.shop.mapper;

import com.shop.pojo.BrandGoodsImg;

public interface BrandGoodsImgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandGoodsImg record);

    int insertSelective(BrandGoodsImg record);

    BrandGoodsImg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BrandGoodsImg record);

    int updateByPrimaryKey(BrandGoodsImg record);
}