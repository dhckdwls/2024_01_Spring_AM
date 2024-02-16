package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ReplyRepository;
import com.example.demo.util.Ut;
import com.example.demo.vo.Article;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;

@Service
public class ReplyService {

	@Autowired
	private ReplyRepository replyRepository;

	public ReplyService(ReplyRepository replyRepository) {
		this.replyRepository = replyRepository;
	}

	public ResultData<Integer> writeReply(int memberId, String comment, int relId) {
		replyRepository.writeReply(memberId, comment,relId);

		int id = replyRepository.getLastInsertId();

		return ResultData.from("S-1","댓글이 생성되었습니다", "id", id);
	}

	public Reply getReply(int id) {
		return replyRepository.getReply(id);
	}

	public List<Reply> getReplys(int id) {
		return replyRepository.getReplys(id);
		
	}

	// 서비스 메서드
	

}