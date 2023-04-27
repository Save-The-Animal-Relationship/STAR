package com.star.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.star.mybatis.config.MyBatisConfig;
import com.star.user.domain.UserVO;

public class UserAdminDAO {
	public SqlSession sqlSession;

	public UserAdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	회원정보 조회
	public UserVO select(Long userNumber) {
		return sqlSession.selectOne("user.select", userNumber);
	}
	
//	회원정보 조회 임시
//	public List<UserAdminVO> select(){
//		return sqlSession.selectList("user.select");
//	}
	
	
//	회원삭제
	public void delete(Long userId) {
		sqlSession.delete("user.delete", userId);
	}
	

}
