package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.BillingaddressDAO;
import com.niit.shoppingcart.domain.Billingaddress;

@Controller
public class BillingaddressController {
	
	@Autowired
	private BillingaddressDAO billingaddressDAO;
	
	@RequestMapping("addBillingaddress")
	public String addBillingaddress(@ModelAttribute Billingaddress billingaddress){
		billingaddressDAO.save(billingaddress);
		return "ViewBillingaddress";
		
}

}
