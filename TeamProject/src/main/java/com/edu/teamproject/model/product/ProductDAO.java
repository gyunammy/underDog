package com.edu.teamproject.model.product;

import java.util.List;

import com.edu.teamproject.domain.Product;

public interface ProductDAO {
	public List selectAll();
	public Product select(int product_idx);
	public void insert(Product product);
	public void update(Product product);
	public void delete(int product_idx);
}
