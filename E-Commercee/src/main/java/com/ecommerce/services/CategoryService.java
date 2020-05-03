package com.ecommerce.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.model.Category;
import com.ecommerce.repository.CategoryRepository;
@Service
@Transactional
public class CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;

	public List<Category> listAllProduct() {
		return (List<Category>) categoryRepository.findAll();
	}

	public void save(Category category) {
		categoryRepository.save(category);

	}

	public Category get(long id) {
		return categoryRepository.findOne(id);
	}

	public void delete(long id) {
		categoryRepository.delete(id);
	}

}
