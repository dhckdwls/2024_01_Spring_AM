package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class APIarticle {
	private int id;
	private String addr1;
	private String addr2;
	private int areacode;
	private int contenttypeid;
	private String firstimage;
	private String firstimage2;
	private String mapx;
	private String mapy;
	private int mlevel;
	private String tel;
	private String title;
	private int zipcode;
}