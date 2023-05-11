package com.multi.gazee;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CommunityMainDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int insert(CommunityMainVO bag) {
		int result = my.insert("main.insert", bag);
		return result;
	}
	
	public int update(CommunityMainVO bag) {
		int result = my.update("main.update", bag);
		return result;
	}
	
	public int delete(int no) {
		int result = my.delete("main.delete", no);
		return result;
	}
	
	public CommunityMainVO one(int no) {
		CommunityMainVO bag = my.selectOne("main.one", no);
		return bag;
	}
	
	public CommunityMainVO edit(int no) {
		CommunityMainVO bag = my.selectOne("main.edit", no);
		return bag;
	}
	
	public List<CommunityMainVO> list() {
		List<CommunityMainVO> list = my.selectList("main.list");
		return list;
	}
}
