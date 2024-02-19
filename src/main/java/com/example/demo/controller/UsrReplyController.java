package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ReplyService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Article;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UsrReplyController {

	@Autowired
	private Rq rq;

	@Autowired
	private ReplyService replyService;


	public UsrReplyController() {

	}

	@RequestMapping("/usr/reply/doWrite")
	@ResponseBody
	public String doWrite(HttpServletRequest req, String comment, @RequestParam(defaultValue = "1") int relId,
			 @RequestParam(defaultValue = "1") int boardId) {

		Rq rq = (Rq) req.getAttribute("rq");
		
		if (Ut.isNullOrEmpty(comment)) {
			return Ut.jsHistoryBack("F-2", "내용을 입력해주세요");
		}

		ResultData<Integer> writeReplyRd = replyService.writeReply(rq.getLoginedMemberId(), comment,relId);

		int id = (int) writeReplyRd.getData1();

		Reply reply = replyService.getReply(id);
		

		return Ut.jsReplace(writeReplyRd.getResultCode(), writeReplyRd.getMsg(), "../article/detail?boardId="+ boardId +"&id=" + relId);

	}
	
	@RequestMapping("/usr/reply/doDelete")
	@ResponseBody
	public String doDelete(HttpServletRequest req, int id,int relId) {
		Rq rq = (Rq) req.getAttribute("rq");

		Reply reply = replyService.getReply(id);

		if (reply == null) {
			return Ut.jsHistoryBack("F-1", Ut.f("%d번 글은 존재하지 않습니다", id));
		}

		ResultData loginedMemberCanDeleteRd = replyService.userCanDelete(rq.getLoginedMemberId(), reply);

		if (loginedMemberCanDeleteRd.isSuccess()) {
			replyService.deleteReply(id);
		}

		return Ut.jsReplace(loginedMemberCanDeleteRd.getResultCode(), loginedMemberCanDeleteRd.getMsg(),
				"../article/detail?id=" + relId);
	}
	
	@RequestMapping("/usr/reply/modify")
	public String showModify(HttpServletRequest req, Model model,int id) {
		Rq rq = (Rq) req.getAttribute("rq");

		Reply reply = replyService.getForPrintReply(rq.getLoginedMemberId(), id);

		if (reply == null) {
			return Ut.jsHistoryBack("F-1", Ut.f("%d번 글은 존재하지 않습니다", id));
		}

		model.addAttribute("reply", reply);

		return "usr/reply/modify";
	}
	
	
	@RequestMapping("/usr/reply/doModify")
	@ResponseBody
	public String doModify(HttpServletRequest req, int id, String comment) {
		Rq rq = (Rq) req.getAttribute("rq");

		Reply reply = replyService.getReply(id);

		if (reply == null) {
			return Ut.jsHistoryBack("F-1", Ut.f("%d번 글은 존재하지 않습니다", id));
		}

		ResultData loginedMemberCanModifyRd = replyService.userCanModify(rq.getLoginedMemberId(), reply);

		if (loginedMemberCanModifyRd.isSuccess()) {
			replyService.modifyReply(id, comment);
		}

		return Ut.jsReplace(loginedMemberCanModifyRd.getResultCode(), loginedMemberCanModifyRd.getMsg(),
				"../article/detail?id=" + id);
	}




}