package com.example.demo.repository;

import com.example.demo.vo.APIarticle;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface APITestRepository {

    @Insert("INSERT INTO APIarticle (addr1, addr2, areacode, contenttypeid, firstimage, firstimage2, mapx, mapy, mlevel, tel, title, zipcode) " +
            "VALUES (#{addr1}, #{addr2}, #{areacode}, #{contenttypeid}, #{firstimage}, #{firstimage2}, #{mapx}, #{mapy}, #{mlevel}, #{tel}, #{title}, #{zipcode})")
    void saveData(APIarticle article);
}