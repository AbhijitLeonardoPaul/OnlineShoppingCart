package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;


@Entity
public class SubCategory implements Serializable{
	
	@Id
	@GeneratedValue
	
	private int subCategoryId;
	private String subCategoryName;
	
	
	@ManyToOne
	@JoinColumn(name="categoryId")
	Category category;


	public int getSubCategoryId() {
		return subCategoryId;
	}


	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}


	public String getSubCategoryName() {
		return subCategoryName;
	}


	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}


	public Category getCategory() {
		return category;
	}


	public List<Product> getProducts() {
		return products;
	}


	public void setProducts(List<Product> products) {
		this.products = products;
	}


	public void setCategory(Category category) {
		category = category;
	}
	
	
	@OneToMany(mappedBy="productSubCategory" , fetch=FetchType.EAGER)
	List<Product> products;

}