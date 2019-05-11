package com.skilldistillery.users.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.skilldistillery.users.entities.Siteuser;

@Service
public class SiteuserDAOImpl implements SiteuserDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Siteuser findById(int id) {
		Siteuser film = em.find(Siteuser.class, id);
		return film;
	}

	@Override
	public List<Siteuser> findAll() {
		String jpql = "select siteuser from Siteuser siteuser";

		List<Siteuser> siteuser = em.createQuery(jpql, Siteuser.class).getResultList();
		return siteuser;
	}

	public boolean updateSiteuser(int id, Siteuser siteuser) {
		Siteuser mngd;
		try {
			mngd = em.find(Siteuser.class, id);
			mngd.setUsername(siteuser.getEmail());
			mngd.setEmail(siteuser.getEmail());
			mngd.setFirstName(siteuser.getEmail());
			mngd.setLastName(siteuser.getEmail());
			mngd.setPassword(siteuser.getEmail());
			mngd.setAccountStatus(siteuser.getEmail());
			mngd.setJobTitle(siteuser.getEmail());
			mngd.setSalary(siteuser.getSalary());
			mngd.setNumVisits(siteuser.getNumVisits());
			mngd.setUserUrl(siteuser.getUserUrl());
			mngd.setUserType(siteuser.getUserType());
		} catch (Exception e) {
			return false;
		}

		return true;
	}

	public boolean deleteSiteuser(int id) {
		try {
			em.getTransaction().begin();

			Siteuser addy = em.find(Siteuser.class, id);
			em.remove(addy);
		} catch (Exception e) {
			return false;
		}

		return true;
	}

}
