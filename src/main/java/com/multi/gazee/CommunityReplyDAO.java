package com.multi.gazee;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CommunityReplyDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int insert(CommunityReplyVO bag) {
		int result = my.insert("reply.insert", bag);
		return result;
	}
	
	public int update(CommunityReplyVO bag) {
		int result = my.update("reply.update", bag);
		return result;
	}
	
	public int delete(int no) {
		int result = my.delete("reply.delete", no);
		return result;
	}
	
	public List<CommunityReplyVO> list() {
		List<CommunityReplyVO> list = my.selectList("reply.list");
		return list;
	}
}
