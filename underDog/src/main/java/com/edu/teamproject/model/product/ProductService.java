package com.edu.teamproject.model.product;

import java.util.List;

import com.edu.teamproject.domain.Product;

public interface ProductService {
	public List selectAll();
	public Product select(int product_idx);
	public void regist(Product product, String dir); //db연동 +file 제어 + 메일발송
	public void update(Product product);
	public void delete(int product_idx);
}
