package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

@Controller
public class HomeController {
	
	@Autowired HttpSession session;
	
	@Autowired ProductDAO productDAO;
	@Autowired Product product; 
	
	//@Autowired Category Category;
	
	//@Autowired CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public  String    goToHome(Model model)
	
	{
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
		
		List<Product> productList=productDAO.list();
		model.addAttribute("productList", productList );
		return "index";
	}
	
	@RequestMapping("/home")
	public String index(Model model)
	{
model.addAttribute("message", "Thank you for visiting Shopping Cart");
		
		List<Product> productList=productDAO.list();
		model.addAttribute("productList", productList );
		return "index";
	}
	
	@RequestMapping("/SignupPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedSignup", "true");
		return "index";
	}
	
	@RequestMapping("/CategoryBy")
	public String menPage(Principal p, @RequestParam(value= "category") String cname,Model model)
	{
		model.addAttribute("isUserClickedMen","true");
		List<Product> productList=productDAO.getByCategory(cname);
		model.addAttribute("productList", productList );
		
		return "index";
	}
	@RequestMapping("/PasswordPage")
	public String passwordPage(Model model)
	{
		model.addAttribute("isUserClickedPassword","true");
		
		return "index";
	}
	
	@RequestMapping("/LoginPage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error, 
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("index");
		
		if(error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
			}
		
		if(logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
			}
		
		mv.addObject("isUserClickedLogin", true);
		return mv;
	}

	
	
}
