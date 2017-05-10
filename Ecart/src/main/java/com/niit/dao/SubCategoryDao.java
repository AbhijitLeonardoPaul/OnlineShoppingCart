package com.niit.dao;

import java.util.List;

import com.niit.model.SubCategory;
import com.niit.model.User;

public interface SubCategoryDao {
	List<SubCategory>   getAllSubCategory(int categoryId);
	public SubCategory getSubCategoryBysubCategoryId(int subCategoryId);
	List<SubCategory>   list();

	
}
