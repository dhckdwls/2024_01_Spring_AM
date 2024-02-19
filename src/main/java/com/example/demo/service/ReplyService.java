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

	public void deleteReply(int id) {
		replyRepository.doDelete(id);
		
	}

	public ResultData userCanDelete(int loginedMemberId, Reply reply) {

		if (reply.getMemberId() != loginedMemberId) {
			return ResultData.from("F-2", "댓글 삭제 권한이 없습니다");
		}

		return ResultData.from("S-1", "댓글이 삭제되었습니다.");
	}

	public Reply getForPrintReply(int loginedMemberId, int id) {
		Reply reply = replyRepository.getForPrintReply(id);

		controlForPrintData(loginedMemberId, reply);

		return reply;
	}

	private void controlForPrintData(int loginedMemberId, Reply reply) {
		if (reply == null) {
			return;
		}
		ResultData userCanModifyRd = userCanModify(loginedMemberId, reply);
		reply.setUserCanModify(userCanModifyRd.isSuccess());

		ResultData userCanDeleteRd = userCanDelete(loginedMemberId, reply);
		reply.setUserCanDelete(userCanDeleteRd.isSuccess());
	}

	public ResultData userCanModify(int loginedMemberId, Reply reply) {

		if (reply.getMemberId() != loginedMemberId) {
			return ResultData.from("F-2", Ut.f("%d번 글에 대한 수정 권한이 없습니다", reply.getId()));
		}

		return ResultData.from("S-1", Ut.f("%d번 글을 수정했습니다", reply.getId()));
	}

	public void modifyReply(int id, String comment) {
		replyRepository.modifyReply(id, comment);
		
	}




	
	

}