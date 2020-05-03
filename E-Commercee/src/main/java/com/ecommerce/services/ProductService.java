package com.ecommerce.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.model.Product;
import com.ecommerce.repository.ProductRepository;

@Service
@Transactional
public class ProductService {
	@Autowired
	private ProductRepository productRepository;

	public List<Product> listAllProduct() {
		return (List<Product>) productRepository.findAll();
	}

	public void save(Product product) {
		productRepository.save(product);

	}

	public Product get(long id) {
		return productRepository.findOne(id);
	}
	public void delete(long id) {
		productRepository.delete(id);
	}

}
