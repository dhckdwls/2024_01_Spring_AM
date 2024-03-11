package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.vo.TripArticle;

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
	
	@RequestMapping("/usr/home/testwrite")
	public String testwrite() {

		return "/usr/home/testwrite";
	}
	
	@RequestMapping("/usr/home/testrandom")
	public String testrandom() {

		return "/usr/home/testrandom";
	}
	
	@RequestMapping("/usr/home/testmypage")
	public String testmypage() {

		return "/usr/home/testmypage";
	}
	
	@RequestMapping("/usr/home/testmap")
	public String testmap() {

		return "/usr/home/testmap";
	}
	
	@RequestMapping("/usr/home/testqna")
	public String testqna() {

		return "/usr/home/testqna";
	}
	
	@RequestMapping("/usr/home/testapi")
	public String testapi() {

		return "/usr/home/testapi";
	}
	
	@RequestMapping("/usr/home/testapi2")
	public String testapi2() {

		return "/usr/home/testapi2";
	}
	
	@RequestMapping("/usr/home/testweather")
	public String testweather() {

		return "/usr/home/testweather";
	}
	
	@RequestMapping("/usr/home/CSV")
	public String CSV() {

		return "/usr/home/CSV";
	}
	
	

	
	
	
}