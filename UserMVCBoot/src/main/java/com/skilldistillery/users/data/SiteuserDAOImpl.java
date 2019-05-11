package com.skilldistillery.users.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.users.entities.Siteuser;

@Service
@Transactional
public class SiteuserDAOImpl implements SiteuserDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Siteuser findById(int id) {
		Siteuser siteuser = em.find(Siteuser.class, id);
		return siteuser;
	}

	@Override
	public List<Siteuser> findAll() {
		String jpql = "select siteuser from Siteuser siteuser";

		List<Siteuser> siteuser = em.createQuery(jpql, Siteuser.class).getResultList();
		return siteuser;
	}

	public Siteuser updateSiteuser(Siteuser siteuser) {
		Siteuser mngd = new Siteuser();
		try {
			mngd.setUsername(siteuser.getUsername());
			mngd.setEmail(siteuser.getEmail());
			mngd.setFirstName(siteuser.getFirstName());
			mngd.setLastName(siteuser.getLastName());
			mngd.setPassword(siteuser.getPassword());
			mngd.setAccountStatus(siteuser.getAccountStatus());
			mngd.setJobTitle(siteuser.getJobTitle());
			mngd.setSalary(siteuser.getSalary());
			mngd.setNumVisits(siteuser.getNumVisits());
			mngd.setUserUrl(siteuser.getUserUrl());
			mngd.setUserType(siteuser.getUserType());
			em.persist(mngd);
			em.flush();
			
		} catch (Exception e) {
			return null;
		}

		return mngd;
	}

	public boolean removeSiteuser(int id) {
		try {
			Siteuser siteuser = em.find(Siteuser.class, id);
			em.remove(siteuser);
//			em.flush();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

	@Override
	public Siteuser addSiteuser(Siteuser siteuser) {
		try {
		em.persist(siteuser);
		em.flush();
		} catch (Exception e) {
			return null;
		}
		return siteuser;
	}

}
