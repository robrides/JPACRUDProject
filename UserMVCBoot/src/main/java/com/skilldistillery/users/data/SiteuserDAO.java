package com.skilldistillery.users.data;

import java.util.List;

import com.skilldistillery.users.entities.Siteuser;

public interface SiteuserDAO {

	Siteuser findById(int id);
	List<Siteuser> findAll();
	
}
