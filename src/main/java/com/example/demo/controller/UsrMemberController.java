package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.vo.Member;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	public UsrMemberController() {

	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public String doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum, String email) {		
		Member member = memberService.getMember(loginId);
		
//		if(member.getLoginId() != null) {
//			return loginId + "는 사용할 수 없습니다";
//		}

		
		memberService.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);

		return nickname + "님 회원가입 되었습니다.";
	}
}