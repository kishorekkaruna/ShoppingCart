package com.niit.controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Cart;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.User;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	@Autowired
	Cart cart;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;

	@RequestMapping("newCart")
	public String newCart(@ModelAttribute Cart cart, Model model) {
		model.addAttribute("isUserClickedCart", "true");
		return "index";
	}

	@RequestMapping("addtoCart")
	public String addCart(@RequestParam("pid") String pid,Principal principal, Model model) {

		Product product = productDAO.get(pid);
		Cart crt = cartDAO.getByUserandProduct(principal.getName(), pid);
	
		String email = principal.getName();
		
		
		User user = userDAO.getMail(email);
		
		

		if (product.getQuantity() > 0) {

			if (cartDAO.itemAlreadyExist(principal.getName(), pid, true)) {
				int qty = crt.getQuantity() + 1;
				crt.setQuantity(qty);
				crt.setTotal(product.getPrice() * qty);
				cartDAO.saveOrUpdate(crt);
			}

			else {
				System.out.println("haaaaaaaaaaiiiiiii");

				Random t = new Random();
				int day = 2 + t.nextInt(7);

				cart.setUserId(user.getId());
				cart.setUserName(user.getName());
				cart.setUserMailId(principal.getName());
				cart.setProductId(product.getPid());
				cart.setProductName(product.getPname());
				cart.setQuantity(1);
				cart.setProductPrice(product.getPrice());
				cart.setTotal(cart.getProductPrice() * cart.getQuantity());
				cart.setStatus("N");
				cart.setDays(day);

				cartDAO.save(cart);

			}
			int quantity = product.getQuantity() - 1;

			product.setQuantity(quantity);
			productDAO.update(product);

			return "redirect:myCart";
		}

		else {
			model.addAttribute("product", product);
			model.addAttribute("ProductDetails", true);
			model.addAttribute("msg", "PRODUCT OUT OF STOCK");
			return "Cart";
		}
	}

	@RequestMapping("myCart")
	public String myCart(Principal principal, Model model) {
		String email = principal.getName();
		List<Cart> cartList = cartDAO.list(email);
		Long sum = cartDAO.getTotalAmount(email);
		model.addAttribute("total", sum);
		model.addAttribute("cartList", cartList);
		model.addAttribute("isUserClickedmyCart", true);

		return "index";
	}

	@RequestMapping("ProductDetails")
	public String productDetails(@RequestParam("pid") String pid, Model model) {
		Product product = productDAO.get(pid);
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedProductDetails", true);
		return "index";
	}

	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("cartId") String cartId) {

		Cart cart = cartDAO.getByCartId(cartId);

		Product product = productDAO.get(cart.getProductId());

		int qrt = cart.getQuantity();
		int stc = product.getQuantity();

		product.setQuantity(stc + qrt);
		productDAO.update(product);

		cartDAO.deleteByCartId(cartId);
		return "redirect:myCart";
	}

}
