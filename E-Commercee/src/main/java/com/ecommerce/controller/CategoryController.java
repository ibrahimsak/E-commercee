package com.ecommerce.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import com.ecommerce.model.Category;
import com.ecommerce.services.CategoryService;
import com.ecommerce.services.ProductService;

@Controller
public class CategoryController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	
	
	@RequestMapping("/category/{id}")
	public String detail(@PathVariable(name="id") int id,Model model) {
		Category category=categoryService.get(id);
		
		
		model.addAttribute("category",category);
		return "category";
		
	}

	

}
