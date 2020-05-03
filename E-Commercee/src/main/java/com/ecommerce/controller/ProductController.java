package com.ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.services.CategoryService;
import com.ecommerce.services.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/")
	public String viewHomePage(Model model) {
		List<Product> products = productService.listAllProduct();
		List<Category> categories=categoryService.listAllProduct();
		model.addAttribute("products", products);
		model.addAttribute("category",categories);
		return "index";
	}

	@RequestMapping("/productlist")
	public String viewProductList(Model model) {
		List<Product> products = productService.listAllProduct();

		model.addAttribute("products", products);

		return "productlist";
	}

	@RequestMapping("detail/{id}")
	public String detail(@PathVariable(name = "id") int id, Model model) {
		Product product = productService.get(id);

		model.addAttribute("product", product);
		return "detail";

	}

	@RequestMapping("/newproduct")
	public String newProduct(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		List<Category> categories = categoryService.listAllProduct();
		model.addAttribute("categories", categories);
		return "new_product";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/productlist";
	}

	@RequestMapping("edit")
	public ModelAndView editProductPage(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView("edit_product");
		Product product = productService.get(id);
		List<Category> categories = categoryService.listAllProduct();
		mv.addObject("categories", categories);
		mv.addObject("product", product);
		return mv;
	}

	@RequestMapping("delete/{id}")
	public String deleteProduct(@PathVariable(name = "id") int id) {
		productService.delete(id);
		return "redirect:/productlist";
	}

}
