package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.RoleDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Role;
import com.niit.shoppingcart.domain.User;

@Controller
public class SignupController {
	
	@Autowired UserDAO userDAO;
	@Autowired User user;
	@Autowired Role role;
	@Autowired RoleDAO roleDAO;
	@Autowired ProductDAO productDAO;
	
	
	
	
	@RequestMapping("newUser")
	public String newUser(@ModelAttribute User user,Model model)
	{
		
		user.setEnabled(true);
		role.setUsername(user.getName());
		role.setEmail(user.getEmail());
		role.setMobilenumber(user.getMobilenumber());
		role.setRole("ROLE_USER");
		
		user.setRole(role);
		role.setUser(user);
		
		
		userDAO.save(user);
		roleDAO.save(role);
		model.addAttribute("isUserClickedSignup","true");
		return "index";
	}
	@RequestMapping("afterLogin")
	public String loginValidate(Principal p, Model model){
		
		String email=p.getName();
		User user=userDAO.getMail(email);
		Role role=roleDAO.getUserByUserMailId(email);
		String validator=role.getRole();
		if(validator.equals("ROLE_ADMIN")){
			
		
	
		return "admin/AdminHome";
		}
		else if(validator.equals("ROLE_USER")){
			List<Product> productList=productDAO.list();
			model.addAttribute("productList", productList );
			return "index";
		}
		else{		
			
			return "Login";
	}
	}

}
