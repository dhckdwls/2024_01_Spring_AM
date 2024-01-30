package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ArticleRepository;
import com.example.demo.repository.MemberRepository;
import com.example.demo.vo.Member;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;

	public MemberService(ArticleRepository articleRepository) {
		this.memberRepository = memberRepository;
	}

	// 서비스 메서드


	public void doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {
		
		memberRepository.doJoin(loginId,loginPw,name,nickname,cellphoneNum,email);
		
	}

	public Member getMember(String loginId) {
		return memberRepository.getMember(loginId);
	}

}