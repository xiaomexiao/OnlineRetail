package com.shop.controller;

import com.shop.pojo.BrandInfo;
import com.shop.service.BrandInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("BrandInfo")
public class BrandInfoController {

    @Autowired
    private BrandInfoService brandInfoService;

    @RequestMapping("toAddbrand")
    public String toAddBrand() {
        return "brand-addbrand";
    }

    @RequestMapping("add")
    public String add(BrandInfo brandInfo) {
        brandInfoService.add(brandInfo);
        return "redirect:/BrandInfo/toAddbrand";
    }
}
