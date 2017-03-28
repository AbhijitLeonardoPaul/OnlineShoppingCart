package com.niit.dao;

import java.util.List;

import com.niit.model.Product;
import com.niit.model.User;

public interface ProductDao {
	List<Product>   getAllProducts(int subCategoryId);
	List<Product>   getAllProducts();
	
	public void addProducts(Product product);
	public void updateProducts(Product Product);
	public void deleteProduct(int productId);
	//public Product getProductsByProductName(String productName);
	public Product getProductById(int ProductId);
}
