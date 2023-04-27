package com.star.user.dao;

import org.apache.ibatis.session.SqlSession;

import com.star.mybatis.config.MyBatisConfig;
import com.star.user.domain.UserAdminVO;

public class UserAdminDAO {
	public SqlSession sqlSession;

	public UserAdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	회원정보 조회
	public UserAdminVO select(Long userNumber) {
		return sqlSession.selectOne("user.select", userNumber);
	}
	
//	회원삭제
	public void delete(Long userId) {
		sqlSession.delete("user.delete", userId);
	}

}
