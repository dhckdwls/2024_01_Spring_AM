package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrHomeController {
	private int a = 0;
	
	@RequestMapping("/usr/home/main")
	@ResponseBody
	public String showMain() {
		return "안녕";
	}
	
	@RequestMapping("/usr/home/main2")
	@ResponseBody
	public String showMain2() {
		return "잘가";
	}
	
	@RequestMapping("/usr/home/main3")
	@ResponseBody
	public int showMain3() {
		return 1 + 2;
	}
	
	@RequestMapping("/usr/home/main4")
	@ResponseBody
	public int showMain4() {
//		++a;
		return a++;
	}
}
