package com.multi.gazee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CommunityReplyController {

	@Autowired
	CommunityReplyDAO dao;
	
	@RequestMapping("insertReply.gazee")
	public void insert(CommunityReplyVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("updateReply.gazee")
	public void update(CommunityReplyVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("deleteReply.gazee")
	public void delete(int no) {
		dao.delete(no);
	}
	
	
	@RequestMapping("listReply.gazee")
	public void list(Model model) {
		List<CommunityReplyVO> commentlist = dao.list();
		model.addAttribute("list", commentlist);
	}
}
