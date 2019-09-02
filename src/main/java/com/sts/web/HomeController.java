package com.sts.web;

import java.util.HashMap;
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

import com.sts.dao.UserInformation;

@Controller
public class HomeController {
	
	private Map<String, Object> userMap;
	
	@Autowired
	UserInformation uDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "navigater_admin.do", method = RequestMethod.GET)
	public String navigater_admin() {
		return "navigater_admin";
	}
	
	@RequestMapping(value = "navigater_common.do", method = RequestMethod.GET)
	public String navigater_common() {
		return "navigater_common";
	}
	
	@RequestMapping(value = "/testhome.do", method = RequestMethod.GET)
	public String testhome() {
		return "testhome";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(HttpSession httpSession) {
		
		if(httpSession.getAttribute("S_ID") != null) {
			httpSession.invalidate();
			userMap.clear();
		}
		
		return "user/login";
	}

	@RequestMapping(value = "loginresult.do", method = RequestMethod.GET)
	public String loginresult(Model model, HttpSession httpSession) {
		
		String tmpAuthority = (String)httpSession.getAttribute("S_AUTHORITY");
		
		if(tmpAuthority != null) {
			if(tmpAuthority.equals("ROLE_ADMIN")) {
				userMap = uDAO.selectAdminOne((String)httpSession.getAttribute("S_ID"));
			}
			else if(tmpAuthority.equals("ROLE_PATIENT")) {
				userMap = uDAO.selectPatientOne((String)httpSession.getAttribute("S_ID"));
			}
			else {
				userMap = uDAO.selectGuardianOne((String)httpSession.getAttribute("S_ID"));
			}
			System.out.println(userMap.toString());
			model.addAttribute("map", userMap);
		}
		
		return "user/loginresult";
	}
	
	@RequestMapping(value="/userimg.do", method=RequestMethod.GET)
	public ResponseEntity<byte[]> memberimg(){
		try {
			HttpHeaders header = new HttpHeaders();
			header.setContentType(MediaType.MULTIPART_FORM_DATA);
			System.out.println(userMap.get("US_IMG"));
			return new ResponseEntity<byte[]>((byte[])userMap.get("US_IMG"), header, HttpStatus.OK);
		}catch(Exception e){
			System.out.println("Error Occured");
			return null;
		}
	}
	
	@RequestMapping(value = "loginresult.do", method = RequestMethod.POST)
	public String loginresult(@RequestParam("id") String id, @RequestParam("pw") String pw, HttpSession httpSession) {
		
		String resultAddress;
		
		Map<String, Object> parameterMap = new HashMap<String, Object>();
		parameterMap.put("id", id);
		parameterMap.put("pw", pw);
		Map<String, Object> resultMap = uDAO.selectUserOne(parameterMap);
		
		if(resultMap != null) {
			httpSession.setAttribute("S_ID", resultMap.get("US_ID"));
			httpSession.setAttribute("S_AUTHORITY", resultMap.get("US_AUTHORITY"));
			resultAddress = "redirect:loginresult.do";
		}else {
			resultAddress = "redirect:login.do";
		}
		return resultAddress;
	}
}
