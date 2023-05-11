package com.multi.gazee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityTempController {

	@Autowired
	CommunityTempDAO dao;
	
	@RequestMapping("insertTemp")
	public void insert(CommunityTempVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("updateTemp.gazee")
	public void update(CommunityTempVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("deleteTemp.gazee")
	public void delete(int no) {
		dao.delete(no);
	}
	
	@RequestMapping("oneTemp.gazee")
	public void one(int no, Model model) {
		CommunityTempVO vo = dao.one(no);
		model.addAttribute("vo", vo);
	}
}
