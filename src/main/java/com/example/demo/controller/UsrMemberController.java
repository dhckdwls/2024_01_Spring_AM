package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Member;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	private Member loginedMember = null;

	@RequestMapping("/usr/member/doLogin")
	@ResponseBody
	public Object doLogin(String loginId, String loginPw) {

		if (loginId == null || loginId.length() == 0 || loginPw == null || loginPw.length() == 0) {
			return "아이디와 비밀번호를 반드시 입력하시오";
		}

		boolean loginedMemberCheck = loginedMember == null ? true : false;

		if (loginedMemberCheck != true) {
			return "이미 로그인 상태입니다";
		}

		Member member = memberService.getMemberByLoginId(loginId);

		if (member == null) {
			return "없는 아이디";
		}

		if (!member.getLoginPw().equals(loginPw)) {
			return "비밀번호가 틀렷어";
		}

		loginedMember = member;

		return member.getNickname() + "님 로그인 되었습니다<br>" + loginedMember;

	}

	@RequestMapping("/usr/member/doLogout")
	@ResponseBody
	public String doLogout() {

		boolean loginedMemberCheck = loginedMember == null ? true : false;

		if (loginedMemberCheck == true) {
			return "이미 로그아웃 상태입니다";
		}

		loginedMember = null;

		return "로그아웃되었습니다";
	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public Object doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {
		if (Ut.isNullOrEmpty(loginId)) {
			return "아이디를 입력해주세요";
		}
		if (Ut.isNullOrEmpty(loginPw)) {
			return "비밀번호를 입력해주세요";
		}
		if (Ut.isNullOrEmpty(name)) {
			return "이름을 입력해주세요";
		}
		if (Ut.isNullOrEmpty(nickname)) {
			return "닉네임을 입력해주세요";
		}
		if (Ut.isNullOrEmpty(cellphoneNum)) {
			return "전화번호를 입력해주세요";
		}
		if (Ut.isNullOrEmpty(email)) {
			return "이메일을 입력해주세요";
		}

		int id = memberService.join(loginId, loginPw, name, nickname, cellphoneNum, email);

		if (id == -1) {
			return Ut.f("이미 사용중인 아이디(%s)입니다", loginId);
		}

		if (id == -2) {
			return Ut.f("이미 사용중인 이름(%s)과 이메일(%s)입니다", name, email);
		}

		Member member = memberService.getMember(id);

		return member;
	}
}