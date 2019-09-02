package com.sts.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sts.dao.UserInformation;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserInformation uDAO;
	String resultAddress;

	//회원가입
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String join() {
		return "/user/join";
	}

	//회원가입 POST
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	public String join( @RequestParam("id") String id,
			@RequestParam("pw") String pw,
			@RequestParam("name") String name,
			@RequestParam("age") String age,
			@RequestParam("picture") MultipartFile imgFile,
			@RequestParam("phone") String phone,
			@RequestParam("division") int division ) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();

			map.put("us_id", id); 
			map.put("us_pw", pw); 
			map.put("us_name", name);
			map.put("us_age", age); 
			map.put("us_img", imgFile.getBytes());
			map.put("us_phone", phone);

			switch(division) {
			case 0: 
				map.put("us_authority", "ROLE_PATIENT");
				break;
			case 1: 
				map.put("us_authority", "ROLE_GUARDIAN"); 
				break;
			}

			System.out.println(map.toString());

			int sqlResult = uDAO.insertUserOne(map);

			resultAddress = "redirect:/";
		}catch(Exception e){
			System.out.println(e.getMessage());
			resultAddress = "redirect:/error";
		}finally {
			return resultAddress;
		}
	}

	//환자 리스트
	@RequestMapping(value="/patientlist.do", method = RequestMethod.GET)
	public String patientlist(Model model, HttpSession httpSession) {

		if (httpSession.getAttribute("S_AUTHORITY").equals("ROLE_ADMIN")) {
			List<Map<String, Object>> list = uDAO.selectPatientList();
			model.addAttribute("list", list);
			return "/user/patientlist";
		}else {
			return "/";
		}
	}

	//환자 정보 수정
	@RequestMapping(value = "/patientupdate.do", method = RequestMethod.GET)
	public String patientupdate(@RequestParam("id") String id, Model model) {
		Map<String, Object> map = uDAO.selectPatientOne(id);
		model.addAttribute("map", map);
		return "/user/patientupdate";
	}

	//환자 정보 수정
	@RequestMapping(value = "/patientupdate.do", method = RequestMethod.POST)
	public String patientupdate(@RequestParam("id") String id,
			@RequestParam("disease") String disease,
			@RequestParam("guardian") String guardian,
			@RequestParam("unique") String unique) {

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("us_id", id);
		map.put("pa_disease", disease);
		map.put("gu_id", guardian);
		map.put("pa_unique", unique);

		uDAO.updatePatientOne(map);

		return "redirect:patientlist.do";
	}

	@RequestMapping(value="/patientimg.do", method=RequestMethod.GET)
	public ResponseEntity<byte[]> memberimg(@RequestParam("id") String id){
		try {
			HttpHeaders header = new HttpHeaders();
			header.setContentType(MediaType.MULTIPART_FORM_DATA);
			Map<String, Object> map = uDAO.selectPatientOne(id);
			return new ResponseEntity<byte[]>((byte[])map.get("US_IMG"), header, HttpStatus.OK);
		}catch(Exception e){
			System.out.println("Error Occured");
			return null;
		}
	}
}
