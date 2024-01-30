package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.vo.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/doLogin")
	@ResponseBody
	public Object doLogin(String loginId, String loginPw) {
		
		if(loginId == null || loginId.length() == 0 || loginPw == null || loginPw.length() == 0) {
			return "아이디와 비밀번호를 반드시 입력하시오";
		}
		
		Member member = memberService.getMemberId(loginId);
		
		if (member == null) {
			return "없는 아이디";
		}
		
		if(!member.getLoginPw().equals(loginPw)) {
			return "비밀번호가 틀렷어";
		}
		
		
		return member.getNickname() + "님 로그인 되었습니다";
		
	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public Object doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {

//		if (loginId == null || loginPw == null || name == null || nickname == null || cellphoneNum == null || email == null || loginId.length() == 0 || loginPw.length() == 0 || name.length() == 0 || nickname.length() == 0 || cellphoneNum.length() == 0 || email.length() == 0) {
//			return "필수 입력 사항이다";
//		}

		if (loginId == null || loginId.length() == 0) {
			return "아이디를 입력하시오";
		}

		boolean memberId = memberService.getMemberId(loginId) == null ? true : false;
		if (memberId == false) {
			return "중복된 아이디 입니다";
		}

		if (loginPw == null || loginPw.length() == 0) {
			return "비밀번호를 입력하시오";
		}
		if (name == null || name.length() == 0) {
			return "이름을 입력하시오";
		}
		if (nickname == null || nickname.length() == 0) {
			return "별명을 입력하시오";
		}
		if (cellphoneNum == null || cellphoneNum.length() == 0) {
			return "전화번호를 입력하시오";
		}
		if (email == null || email.length() == 0) {
			return "email를 입력하시오";
		}

//		loginId=test2&loginPw=test2&name=회원3&nickname=실험쥐3&cellphoneNum=01012341234&email=test3@test3.com

		int id = memberService.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);

		Member member = memberService.getMember(id);

		return member;
	}
}