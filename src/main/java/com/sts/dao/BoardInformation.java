package com.sts.dao;

import java.util.List;
import java.util.Map;

public interface BoardInformation {
	public List<Map<String, Object>> selectRequestList();
	
	public List<Map<String, Object>> selectSupportList();
	
	public List<Map<String, Object>> selectPrescriptionList();
	
	public Map<String, Object> selectRequestOne(int requestNum);
	
	public Map<String, Object> selectPrescriptionOne(String prescriptionName);
	
	public int insertRequestOne(Map<String, Object> map);
	
	public int insertSupportOne(Map<String, Object> map);
}
