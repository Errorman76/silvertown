package com.sts.dao;

import java.util.List;
import java.util.Map;

public interface UserInformation {

	public int insertUserOne(Map<String, Object> map);
	
	public int updatePatientOne(Map<String, Object> map);
	
	public Map<String, Object> selectUserOne(Map<String, Object> map);
	
	public Map<String, Object> selectPatientOne(String id);
	
	public List<Map<String, Object>> selectPatientList();
	
	public Map<String, Object> selectAdminOne(String id);
	
	public Map<String, Object> selectGuardianOne(String id);
}
