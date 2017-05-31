package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Category;

@Controller
public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;

	@RequestMapping("newCategory")
	public String newCategory(@ModelAttribute Category category, Model model) {
		boolean flag = categoryDAO.save(category);
		System.out.println(flag);
		model.addAttribute("isAdminClickedCategory", "true");
		return "redirect:ViewCategory";
	}

	@RequestMapping("/AddCategory")
	public ModelAndView addcategoryPage(Model model) {
		ModelAndView mv = new ModelAndView("admin/AdminHome");
		mv.addObject("isAdminClickedAddCategory", "true");
		return mv;
	}

	@RequestMapping("/ViewCategory")
	public String viewCategory(Model model) {
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("isAdminClickedViewCategory", true);
		return "admin/AdminHome";

	}

	@RequestMapping("/EditCategory")
	public String editCategory(@RequestParam("id") String id, Model model) {
		Category category = categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("isAdminClickedEditCategory", true);
		return "admin/AdminHome";

	}

	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam("id") String id) {
		categoryDAO.deleteById(id);
		return "redirect:ViewCategory";
	}

	@RequestMapping("afterEdit")
	public String afterEdit(@ModelAttribute Category category) {
		categoryDAO.update(category);
		return "redirect:ViewCategory";

	}

}
