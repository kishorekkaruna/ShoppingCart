package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.util.FileUtil;

@Controller
public class ProductController {
	@Autowired ProductDAO productDAO;
	@Autowired Product product;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping("newProduct")
	public String newProduct(@ModelAttribute Product product,@RequestParam("image") MultipartFile file, Model model)
	{
		 productDAO.save(product);
		
		String path="/Users/kishorekumarkarunagaran/Documents/workspace/ShoppingCartFRNd/src/main/webapp/WEB-INF/resources/img/Product/";
		FileUtil.upload(path, file, product.getPid()+".jpg");
		model.addAttribute("isAdminClickedProduct", "true");
		return "redirect:ViewProduct";
	}
	@RequestMapping("AddProduct")
	public ModelAndView addproductPage(Model model) {
		
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		ModelAndView mv = new ModelAndView("admin/AdminHome");
		mv.addObject("isAdminClickedAddProduct", "true");
		return mv;
	}
	@RequestMapping("/ViewProduct")
	public String viewProduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("isAdminClickedViewProduct", true);
		return "admin/AdminHome";
	}
	@RequestMapping("/EditProduct")
	public String editProduct(@RequestParam("pid") String pid, Model model) {
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		Product product = productDAO.get(pid);
		model.addAttribute("product", product);
		model.addAttribute("isAdminClickedEditProduct", true);
		return "admin/AdminHome";
		}
	@RequestMapping("afterChange")
	public String afterChange(@ModelAttribute Product product) {
		productDAO.update(product);
		
		return "redirect:ViewProduct";

	}
	
	@RequestMapping("/removeProduct")
	public String removeProduct(@RequestParam("pid") String pid){
	productDAO.deleteById(pid);;
	return "redirect:ViewProduct";	
	}
}
