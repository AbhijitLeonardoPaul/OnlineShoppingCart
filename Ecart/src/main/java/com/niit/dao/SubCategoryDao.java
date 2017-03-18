package com.niit.dao;

import java.util.List;

import com.niit.model.SubCategory;

public interface SubCategoryDao {
	List<SubCategory>   getAllSubCategory(int categoryId);
}
