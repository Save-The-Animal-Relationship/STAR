package com.star.user.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.star.mybatis.config.MyBatisConfig;
import com.star.user.domain.Search;
import com.star.user.domain.UserVO;

public class UserAdminDAO {
	public SqlSession sqlSession;

	public UserAdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원정보 조회 
	
	public List<UserVO> select(HashMap<String, Object> pagable){
		return sqlSession.selectList("user.select", pagable);
	}
	
//	전체 회원정보 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("user.getTotal", search);
	}

	
//	회원삭제
	public void delete(Long userId) {
		sqlSession.delete("user.delete", userId);
	}


	

}
