package com.sbs.example.lolHi.controller.usr;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.example.lolHi.dto.Article;
import com.sbs.example.lolHi.dto.Member;
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
	public String Join(@RequestParam Map<String, Object> param, Model model) {
		String loginId = Util.getAsStr(param.get("loginId"), "");
		String name = Util.getAsStr(param.get("name"), "");
		String email = Util.getAsStr(param.get("email"), "");

		if (loginId.length() == 0) {
			model.addAttribute("msg", String.format("로그인 아이디를 입력해주세요"));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}
		boolean isJoinAvailableNameAndEmail= memberService.isJoinAvailableNameAndEmail(name,email);

		if (isJoinAvailableNameAndEmail == false) {
			model.addAttribute("msg", String.format("이미 가입된 회원 정보입니다"));
			model.addAttribute("replaceUri", "/usr/member/findLgoidId");
			return "common/redirect";

		}
		
		boolean isJoinAvailableLoginId = memberService.isJoinAvailableLoginId(loginId);

		if (isJoinAvailableLoginId == false) {
			model.addAttribute("msg", String.format("%s 은(는) 이미 사용중인 아이디 입니다.", loginId));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}

		int id = memberService.join(param);

		model.addAttribute("msg", String.format("%d 번 회원님 가입을 축하합니다.", id));
		model.addAttribute("replaceUri", String.format("/usr/article-free/list"));

		return "common/redirect";
	}

	@RequestMapping("/usr/member/login")
	public String showLogin() {

		return "usr/member/login";
	}

	@RequestMapping("/usr/member/doLogin")
	public String doLogin(String loginId, String loginPw, HttpSession session, Model model) {

		if (loginId.length() == 0) {
			model.addAttribute("msg", String.format("로그인 아이디를 입력해주세요"));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}
		Member member = memberService.getMemberByLoginId(loginId);

		if (member == null) {
			model.addAttribute("msg", String.format("%s은(는) 존재하지 않는 아이디 입니다.", loginId));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}
		if (member.getLoginPw().equals(loginPw) == false) {
			model.addAttribute("msg", String.format("비밀번호를 정확히 입력해주세요."));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}

		session.setAttribute("loginedMemberId", member.getId());
		session.setAttribute("loginedMemberName", member.getName());

		model.addAttribute("msg", String.format("%s 번 님 환영합니다", member.getName()));
		model.addAttribute("replaceUri", String.format("/usr/article-free/list"));
		return "common/redirect";
	}

	@RequestMapping("/usr/member/doLogout")
	public String doLogout(HttpSession session, Model model) {

		session.removeAttribute("loginedMemberId");

		model.addAttribute("replaceUri", String.format("/usr/article-free/list"));

		return "common/redirect";

	}

	@RequestMapping("/usr/member/modify")
	public String MemberModify() {

		return "usr/member/modify";
	}

	@RequestMapping("/usr/member/doModify")
	public String doModify(HttpServletRequest req, @RequestParam Map<String, Object> param, Model model) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");
		param.put("id", loginedMemberId);

		param.remove("logindId");
		param.remove("logindPW");

		memberService.modify(param);

		model.addAttribute("msg", String.format("수정되었습니다."));
		model.addAttribute("replaceUri", "/usr/article-free/list");
		return "common/redirect";

	}
	
	@RequestMapping("/usr/member/findLoginId")
	public String showfindLoginId() {

		return "usr/member/findLoginId";
	}
	@RequestMapping("/usr/member/doFindLoginId")
	public String doFindLoginId(Model model, String name, String email) {
		Member member = memberService.getMemberByNameAndEmail(name,email);
		
		if(member == null) {
			model.addAttribute("msg",String.format("해당회원은 존재하지 않습니다."));
			model.addAttribute("historyBack",true);
			return "common/redirect";
		}
		
		model.addAttribute("msg",String.format("가입날짜 : %s, 로그인 아이디 : %s.",member.getRegDate(),member.getLoginId()));
		model.addAttribute("historyBack",true);
		return "common/redirect";
	}

}