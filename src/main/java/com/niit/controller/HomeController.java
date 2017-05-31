package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("/IndexPage")
	public String index(Model model)
	{
		model.addAttribute("isUserClickedIndex","true");
		return "index";
	}
	@RequestMapping("/LoginPage")
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "index";
	}
	
	@RequestMapping("/SignupPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedSignup", "true");
		
		return "index";
	}
	@RequestMapping("/BooksPage")
	public String booksPage(Model model)
	{
		model.addAttribute("isUserClickedBooks","true");
		
		return "index";
	}
	@RequestMapping("/ElectronicsPage")
	public String electronicsPage(Model model)
	{
		model.addAttribute("isUserClickedElectronics","true");
		
		return "index";
	}
	@RequestMapping("/MenPage")
	public String menPage(Model model)
	{
		model.addAttribute("isUserClickedMen","true");
		
		return "index";
	}
	@RequestMapping("/SportsPage")
	public String sportsPage(Model model)
	{
		model.addAttribute("isUserClickedSports","true");
		
		return "index";
	}
	@RequestMapping("/WomenPage")
	public String womenPage(Model model)
	{
		model.addAttribute("isUserClickedWomen","true");
		
		return "index";
	}
	@RequestMapping("/PasswordPage")
	public String passwordPage(Model model)
	{
		model.addAttribute("isUserClickedPassword","true");
		
		return "index";
	}
	
	
}
