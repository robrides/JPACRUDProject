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
	public Siteuser findByUsernamePwd(String username, String password) {
		String jpql = "select siteuser from Siteuser siteuser WHERE siteuser.password = :passwordBind AND siteuser.username = :usrnameBind";
		System.out.println(jpql);
		List<Siteuser> siteuserList = em.createQuery(jpql, Siteuser.class)
				.setParameter("usrnameBind", username)
				.setParameter("passwordBind",password)
				.getResultList();
		
		return siteuserList.get(0);
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
			mngd.setLastLogin(siteuser.getLastLogin());
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
		} catch (Exception e) {
			return false;
		}
		
		return true;
	}

	@Override
	public Siteuser addSiteuser(Siteuser siteuser) {
		System.out.println(siteuser);
		try {
		em.persist(siteuser);
		em.flush();
		} catch (Exception e) {
			return null;
		}
		return siteuser;
	}

}
