package com.sts.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sts.dao.BoardInformation;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardInformation bDAO;

	//후원하기
	@RequestMapping(value = "/support.do", method = RequestMethod.GET)
	public String support() {
		
		return "board/support";
	}
	@RequestMapping(value = "/support.do", method = RequestMethod.POST)
	public String support(
			@RequestParam("support") String SUPPORT,
			@RequestParam("comment") String COMMENT,
			@RequestParam("title") String TITLE,
			HttpSession httpSession) {
		Map<String, Object> map = new HashMap<String, Object>();
		httpSession.getAttribute("S_ID");
		map.put("CO_SUPPORT", SUPPORT);
		map.put("US_CO_ID", httpSession.getAttribute("S_ID"));
		map.put("CO_COMMENT", COMMENT);
		map.put("CO_TITLE", TITLE);

		bDAO.insertSupportOne( map ); 
		return "redirect:/board/supportlist.do";
			 
	}

	//후원 리스트
	@RequestMapping(value = "/supportlist.do", method = RequestMethod.GET)
	public String supportlist(Model model) {
		List<Map<String, Object>> list = bDAO.selectSupportList();
		System.out.println(list);
		model.addAttribute("list", list);
		return "/board/supportlist";
	}

	//요청하기쓰기
	@RequestMapping(value = "/requestwrite.do", method = RequestMethod.GET)
	public String requestwrite() {
		return "/board/requestwrite";
	}
	@RequestMapping(value = "/requestwrite.do", method = RequestMethod.POST)
	public String requestwrite(
			@RequestParam("content") String COMMENT,
			@RequestParam("title") String TITLE,
			@RequestParam("hero") String CATEGORY,
			HttpSession httpSession) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("RE_COMMENT", COMMENT);
		map.put("US_RE_ID", httpSession.getAttribute("S_ID"));
		map.put("RE_TITLE", TITLE);
		map.put("RE_CATEGORY", CATEGORY);

		bDAO.insertRequestOne( map );
		
		return "redirect:requestlist.do";
	}

	//요청하기내용
	@RequestMapping(value = "/request.do", method = RequestMethod.GET)
	public String request(@RequestParam("id") int num, Model model)
	{	
		Map<String, Object> map = bDAO.selectRequestOne( num );
		model.addAttribute("map", map);
		return "/board/request";
	}

	//요청 리스트
	@RequestMapping(value = "/requestlist.do", method = RequestMethod.GET)
	public String requestlist(Model model) {
		List<Map<String, Object>> list = bDAO.selectRequestList();
		System.out.println(list);
		model.addAttribute("list", list);
		return "/board/requestlist";
	}

	//처방 리스트
	@RequestMapping(value = "/prescriptionlist.do", method = RequestMethod.GET)
	public String prescription(Model model) {
		List<Map<String, Object>> list = bDAO.selectPrescriptionList();
		System.out.println(list);
		model.addAttribute("list", list);
		return "/board/prescriptionlist";
	}

	//처방전
	@RequestMapping(value = "/prescription.do", method = RequestMethod.GET)
	public String formula(@RequestParam("id") String id, Model model) {
		Map<String, Object> map = bDAO.selectPrescriptionOne(id);
		System.out.println(map);
		model.addAttribute("map", map);
		return "/board/prescription";
	}
	@RequestMapping(value = "/GoodMember.do", method = RequestMethod.GET)
	public String GoodMember() {
	return "/board/GoodMember";
	
	}


}
