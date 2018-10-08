package com.shop.pojo;

public class BrandGoodsImg {
    private Integer id;

    private String brand_name;

    private String brand_logo;

    private Integer user_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name == null ? null : brand_name.trim();
    }

    public String getBrand_logo() {
        return brand_logo;
    }

    public void setBrand_logo(String brand_logo) {
        this.brand_logo = brand_logo == null ? null : brand_logo.trim();
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
}