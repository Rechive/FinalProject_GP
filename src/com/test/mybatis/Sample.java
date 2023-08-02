/* =================
 	Sample.java
 	- ��Ʈ�ѷ� ��ü 
 ===================*/

package com.test.mybatis;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Sample 
{
	@RequestMapping(value="/hello.action", method = RequestMethod.GET)
	public String hello(Model model)
	{
		model.addAttribute("message", "Hello, Sample.java");
		
		return "/WEB-INF/view/storeDetail-userView.jsp";
	}
	
}
