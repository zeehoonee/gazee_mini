package com.multi.gazee;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CommunityTempDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int insert(CommunityTempVO bag) {
		int result = my.insert("temp.insert", bag);
		return result;
	}
	
	public int update(CommunityTempVO bag) {
		int result = my.update("temp.update", bag);
		return result;
	}
	
	public int delete(int no) {
		int result = my.delete("temp.delete", no);
		return result;
	}
	
	public CommunityTempVO one(int no) {
		CommunityTempVO vo = my.selectOne("temp.one", no);
		return vo;
	}
}
