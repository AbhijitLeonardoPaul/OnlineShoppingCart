package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}
	@RequestMapping("/footer")
	public String footer() {
		return "footer";
	
	}
	@RequestMapping("/register")
	public String register() {
		return "register";
	
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	
	}
	
	@RequestMapping("/products")
	public String products() {
		return "products";
}
}
