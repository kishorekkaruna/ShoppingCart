package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Cart;
import com.niit.shoppingcart.domain.Product;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	@Autowired
	Cart cart;
	@Autowired
	ProductDAO productDAO;

	@RequestMapping("newCart")
	public String newCart(@ModelAttribute Cart cart, Model model) {
		model.addAttribute("isUserClickedCart", "true");
		return "index";
	}

	@RequestMapping("addtoCart")
	public String addToCart(Model model) {
		return "index";
	}

	@RequestMapping("ProductDetails")
	public String productDetails(@RequestParam("pid") String pid, Model model) {
		Product product = productDAO.get(pid);
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedProductDetails", true);
		return "index";
	}

}
