package com.sts.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardDAO implements BoardInformation{

	@Autowired
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectRequestList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("boardMapper.selectRequestList");
	}

	@Override
	public List<Map<String, Object>> selectSupportList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("boardMapper.selectSupportList");
	}

	@Override
	public List<Map<String, Object>> selectPrescriptionList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("boardMapper.selectPrescriptionList");
	}

	@Override
	public Map<String, Object> selectRequestOne(int requestNum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.selectRequestOne", requestNum);
	}

	@Override
	public Map<String, Object> selectPrescriptionOne(String prescriptionName) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.selectPrescriptionOne", prescriptionName);
	}

	@Override
	public int insertRequestOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.insert("boardMapper.insertRequestOne", map);
	}

	@Override
	public int insertSupportOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.insert("boardMapper.insertSupportOne", map);
	}
	
}
