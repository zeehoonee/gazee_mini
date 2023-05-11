package com.multi.gazee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CommunityMainController {
    
    @Autowired
    CommunityMainDAO dao;
    
    @RequestMapping("insertMain")
    public void insert(CommunityMainVO bag) {
        dao.insert(bag);
    }
    
    @RequestMapping("updateMain")
    public void update(CommunityMainVO bag) {
        dao.update(bag);
    }
    
    @RequestMapping("deleteMain")
    public void delete(int no) {
        dao.delete(no);
    }
    
    @RequestMapping("oneMain")
    public void one(int id, Model model) {
        CommunityMainVO bag = dao.one(id);
        model.addAttribute("bag", bag);
    }
    
    @RequestMapping("editMain")
    public void edit(int id, Model model) {
        CommunityMainVO bag = dao.edit(id);
        model.addAttribute("bag", bag);
    }
    
    @RequestMapping("community")
    public void list(Model model) {
        List<CommunityMainVO> list = dao.list();
        model.addAttribute("list", list);
    }
}
