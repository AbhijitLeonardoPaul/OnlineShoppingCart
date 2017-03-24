package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.UsersDao;
import com.niit.model.Users;

@Controller
public class HomeController {
	
	@Autowired
	CategoryDao  categoryDao;
	@RequestMapping("/home")
	public ModelAndView home(HttpServletRequest  request , HttpSession session) {
		session=request.getSession();
		session.setAttribute("categoryList", categoryDao.getAllCategory());
		ModelAndView mv= new ModelAndView("home");
		 mv.addObject("categoryList", categoryDao.getAllCategory());
	        return mv;  
	    
	}

	/*@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}*/
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
	public ModelAndView products() {
		ModelAndView mv= new ModelAndView("products");
		 mv.addObject("categoryList", categoryDao.getAllCategory());
	        return mv; 
}
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView loginPage() {

		return new ModelAndView("loginPage");
	}
	@RequestMapping("/cart")
	public String cart() {
		return "cart";
}
}