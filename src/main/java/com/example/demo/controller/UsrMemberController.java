package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Member;
import com.example.demo.vo.ResultData;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;
	
	private Member loginedMember = null;
	
	@RequestMapping("/usr/member/doLogin")
	@ResponseBody
	public ResultData<Member> doLogin(String loginId, String loginPw) {
		
		if (loginedMember != null) {
			return ResultData.from("F-1", "이미 로그인 상태입니다.");
		}
		
		if(loginId == null || loginId.trim().length() == 0) {
			return ResultData.from("F-2", "아이디를 입력해주세요.");
		}
		if(loginPw == null || loginPw.trim().length() == 0) {
			return ResultData.from("F-3","비밀번호를 입력해주세요.");
		}
		
		Member member = memberService.getMemberByLoginId(loginId);
		
		Boolean isLoginableId = memberService.getMemberByLoginId(loginId) != null ? true : false; 
		
		if (isLoginableId == false) {
			return ResultData.from("F-4", Ut.f("%s (은)는 없는 아이디입니다.",loginId));
		}
		if(!member.getLoginPw().equals(loginPw)) {
			return ResultData.from("F-5", "비밀번호가 틀렷습니다");
		}
		loginedMember = member;
		return ResultData.from("S-1",Ut.f("%s 님 로그인 되었습니다.",member.getName()), member);
	}
	
	@RequestMapping("/usr/member/doLogout")
	@ResponseBody
	public ResultData doLogout() {
		if (loginedMember == null) {
			return ResultData.from("F-1","이미 로그아웃 상태 입니다");
		}
		
		loginedMember = null;
		
		return ResultData.from("S-1", "로그아웃 되었습니다.");
	}
	
	
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public ResultData<Member> doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {
		if (Ut.isNullOrEmpty(loginId)) {
			return ResultData.from("F-1", "아이디를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(loginPw)) {
			return ResultData.from("F-2", "비밀번호를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(name)) {
			return ResultData.from("F-3", "이름을 입력해주세요");
		}
		if (Ut.isNullOrEmpty(nickname)) {
			return ResultData.from("F-4", "닉네임을 입력해주세요");
		}
		if (Ut.isNullOrEmpty(cellphoneNum)) {
			return ResultData.from("F-5", "전화번호를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(email)) {
			return ResultData.from("F-6", "이메일을 입력해주세요");
		}

		ResultData<Integer> joinRd = memberService.join(loginId, loginPw, name, nickname, cellphoneNum, email);

		if (joinRd.isFail()) {
			return (ResultData) joinRd;
		}

		Member member = memberService.getMember(joinRd.getData1());

		return ResultData.newData(joinRd, member);
	}
}