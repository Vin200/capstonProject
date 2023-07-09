package coms.Medicare.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

	@GetMapping({"/","/homePage"})
	public String home(Model model,javax.servlet.http.HttpServletRequest request ) {
		System.out.println("Vinayak");
		HttpSession session = request.getSession();
		if(Objects.isNull(session.getAttribute("cartCount")))
			session.setAttribute("cartCount", 0);
		return "homePage";
	}
	
	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "AboutUs";
	}
}
