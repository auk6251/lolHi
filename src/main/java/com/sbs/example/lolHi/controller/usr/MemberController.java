package com.sbs.example.lolHi.controller.usr;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.example.lolHi.dto.Article;
import com.sbs.example.lolHi.service.ArticleService;
import com.sbs.example.lolHi.service.MemberService;
import com.sbs.example.lolHi.util.Util;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/join")
	public String MemberJoin() {

		return "usr/member/join";
	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public String Join(@RequestParam Map<String, Object> param) {

		int id = memberService.join(param);

		return String.format(
				"<script> alert('%d 번 회원님 가입을 축하합니다.'); location.replace('/usr/article/list');</script>", id);
	}

}