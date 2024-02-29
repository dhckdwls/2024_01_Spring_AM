package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/main")
	public String showMain() {

		return "/usr/home/main";
	}

	@RequestMapping("/")
	public String showRoot() {

		return "redirect:/usr/home/main";
	}
	
//	 테스트용
	@RequestMapping("/usr/home/testmain")
	public String testmain() {

		return "/usr/home/testmain";
	}
	
	@RequestMapping("/usr/home/testlogin")
	public String testlogin() {

		return "/usr/home/testlogin";
	}
	
	@RequestMapping("/usr/home/testjoin")
	public String testjoin() {

		return "/usr/home/testjoin";
	}
	
	@RequestMapping("/usr/home/testdetail")
	public String testdetail() {

		return "/usr/home/testdetail";
	}
	
	@RequestMapping("/usr/home/testlist")
	public String testlist() {

		return "/usr/home/testlist";
	}
	
	@RequestMapping("/usr/home/testtest")
	public String testtest() {

		return "/usr/home/testtest";
	}
}