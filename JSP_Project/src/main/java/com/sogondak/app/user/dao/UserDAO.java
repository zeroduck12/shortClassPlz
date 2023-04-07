package com.sogondak.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sogondak.mybatis.SqlMapConfig;

public class UserDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		if(sqlsession.insert("User.join",user)==1) {
			result = true;
		}
		return result;
	}
		
	public boolean login(String userid, String userpw) {
		boolean result = false;
		
		HashMap<String, String> datas = new HashMap<>();
		
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		if( (Integer)sqlsession.selectOne("User.login",datas) == 1) {
			result = true;
		}
		return result;
	}
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkId", userid);
		if( cnt == 1 ) {
			result = true;
		}
		return result;
	}

	public void loginStatusChangeToLogin(String userid) {
		sqlsession.update("User.loginStatusChangeToLogin", userid);
	}

	public UserDTO userIsLogin(String userid) {
		return sqlsession.selectOne("User.userIsLigon", userid);
	}
	
	
	
}
