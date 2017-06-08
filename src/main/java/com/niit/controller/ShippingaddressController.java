package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ShippingAddressDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Cart;
import com.niit.shoppingcart.domain.ShippingAddress;
import com.niit.shoppingcart.domain.User;

@Controller
public class ShippingaddressController {

	@Autowired
	private ShippingAddressDAO shippingAddressDAO;

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;

	@RequestMapping("newAddress")
	public String newAddress(@ModelAttribute ShippingAddress shippingaddress, Principal p, Model model) {
		User user = userDAO.getMail(p.getName());
		shippingaddress.setUserMailId(p.getName());
		shippingaddress.setUserId(user.getId());
		shippingAddressDAO.save(shippingaddress);

		return "redirect:proceed";
	}

	@RequestMapping("afterEditShipping")
	public String AfterEdit(@ModelAttribute ShippingAddress shippingaddress, Principal p) {
		User user = userDAO.getMail(p.getName());
		shippingaddress.setUserMailId(p.getName());
		shippingaddress.setUserId(user.getId());

		shippingAddressDAO.update(shippingaddress);

		return "redirect:proceed";

	}

	@RequestMapping("proceed")
	public String proceedToDelivery(Principal p, Model model) {
		String email = p.getName();
		List<ShippingAddress> shippingList = shippingAddressDAO.getUserByUserMailId(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("shippingaddressList", true);
		return "UserLogin";
	}

	@RequestMapping("newshipping")
	public String newshipping(Model model) {
		model.addAttribute("newShippingClicked", true);
		return "UserLogin";
	}

	@RequestMapping("editShipping")
	public String EditShipping(@RequestParam("shippingId") String shippingId, Model model) {

		ShippingAddress shippingaddress = shippingAddressDAO.getShippingId(shippingId);
		model.addAttribute("shipping", shippingaddress);
		model.addAttribute("EditShippingClicked", true);
		return "UserLogin";

	}

	@RequestMapping("deleteShipping")
	public String deleteShipping(@RequestParam("shippingId") String shippingId) {
		shippingAddressDAO.delete(shippingId);
		return "redirect:proceed";

	}
	
	@RequestMapping("deliverAdress")
	public String deliverAdress(@RequestParam("shippingId") String shippingId, Principal p, Model model){
		
		String email  = p.getName();
		
		List<Cart> cartList = cartDAO.list(email);
		
		for(Cart crt : cartList){
			crt.setShippingId(shippingId);
			cartDAO.save(crt);
			
		}
		model.addAttribute("Successfully", true);
		
		return "UserLogin";
		
}
}
