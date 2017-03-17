package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UsersDao;
import com.niit.model.Users;

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