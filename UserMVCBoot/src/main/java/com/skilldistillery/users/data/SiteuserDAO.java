package com.skilldistillery.users.data;

import java.util.List;

import com.skilldistillery.users.entities.Siteuser;

public interface SiteuserDAO {

	public Siteuser findById(int id);
	public List<Siteuser> findAll();
	public Siteuser updateSiteuser(Siteuser siteuser);
	public Siteuser addSiteuser(Siteuser siteuser);
	public boolean removeSiteuser(int id);
	
}
