package com.sts.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserDAO implements UserInformation{

	@Autowired
	@Resource(name="sqlSession")
	private SqlSession sqlSession;

	@Override
	public int insertUserOne(Map<String, Object> map) throws IllegalArgumentException{
		String tmpAuthority = (String)map.get("us_authority");
		if(tmpAuthority.equals("ROLE_PATIENT")) {	
			sqlSession.insert("userMapper.insertUserOne", map);
			return sqlSession.insert("userMapper.insertPatientOne", map);	
		}else if(tmpAuthority.equals("ROLE_GUARDIAN")) {
			sqlSession.insert("userMapper.insertUserOne", map);
			return sqlSession.insert("userMapper.insertGuardianOne", map);	
		}else {
			throw new IllegalArgumentException("The division value is invalid.");
		}
	}
	
	@Override
	public int updatePatientOne(Map<String, Object> map) {
		return sqlSession.update("userMapper.updatePatientOne", map);
	}

	@Override
	public Map<String, Object> selectUserOne(Map<String, Object> map) {
		return sqlSession.selectOne("userMapper.selectUserOne", map);
	}
	
	@Override
	public Map<String, Object> selectPatientOne(String id) {
		return sqlSession.selectOne("userMapper.selectPatientOne", id);
	}
	
	@Override
	public List<Map<String, Object>> selectPatientList() {
		return sqlSession.selectList("userMapper.selectPatientList");
	}
	
	@Override
	public Map<String, Object> selectAdminOne(String id) {
		return sqlSession.selectOne("userMapper.selectAdminOne", id);
	}

	@Override
	public Map<String, Object> selectGuardianOne(String id) {
		return sqlSession.selectOne("userMapper.selectGuardianOne", id);
	}
}
