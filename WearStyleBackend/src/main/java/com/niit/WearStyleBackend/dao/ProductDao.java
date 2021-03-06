package com.niit.WearStyleBackend.dao;

import java.util.List;

import com.niit.WearStyleBackend.models.Product;


public interface ProductDao 
{

	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public List<Product> retrieveProduct();
	public List<Product> retrieveProductByCat(int cid);
	public boolean updateProduct(Product product);
	public Product getProduct(int productId);

}
