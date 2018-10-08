package com.shop.mapper;

import com.shop.pojo.BrandInfo;

public interface BrandInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandInfo record);

    int insertSelective(BrandInfo record);

    BrandInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BrandInfo record);

    int updateByPrimaryKey(BrandInfo record);
}