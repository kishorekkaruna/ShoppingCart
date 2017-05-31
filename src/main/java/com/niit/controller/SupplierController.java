package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class SupplierController {

	@Autowired SupplierDAO supplierDAO;
	@Autowired Supplier supplier;
	
	@RequestMapping("newSupplier")
	public String newCategory(@ModelAttribute Supplier supplier, Model model)
	{
		boolean flag = supplierDAO.save(supplier);
		System.out.println(flag);
		model.addAttribute("isAdminClickedSupplier", "true");
		return "redirect:ViewSupplier";
	}
	@RequestMapping("/AddSupplier")
	public ModelAndView addsupplierPage(Model model) {
		ModelAndView mv = new ModelAndView("admin/AdminHome");
		mv.addObject("isAdminClickedAddSupplier", "true");
		return mv;
	}
	@RequestMapping("/ViewSupplier")
	public String viewSupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isAdminClickedViewSupplier", true);
		return "admin/AdminHome";
	}
	@RequestMapping("/EditSupplier")
	public String editSupplier(@RequestParam("id") String id, Model model) {
		Supplier supplier = supplierDAO.get(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("isAdminClickedEditSupplier", true);
		return "admin/AdminHome";

	}
	@RequestMapping("/removeSupplier")
		public String removeSupplier(@RequestParam("id") String id){
		supplierDAO.deleteById(id);;
		return "redirect:ViewSupplier";	
		}
	@RequestMapping("aftersupplierEdit")
	public String aftersupplierEdit(@ModelAttribute Supplier supplier) {
		supplierDAO.update(supplier);
		return "redirect:ViewSupplier";
	}
	}
	

