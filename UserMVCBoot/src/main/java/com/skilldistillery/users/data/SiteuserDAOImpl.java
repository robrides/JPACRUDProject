package com.skilldistillery.users.data;

import java.util.ArrayList;
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
	public List<Siteuser> findByAny(String searchTerm) {
		Integer num = 0;
		List<Siteuser> siteuserList = new ArrayList<>();
		
		try {
			Integer.parseInt(searchTerm);
			num = Integer.parseInt(searchTerm);
			siteuserList.add(findById(num));
		}catch (Exception e) {
			String jpql = "select siteuser from Siteuser siteuser WHERE siteuser.firstName LIKE :searchBind or siteuser.lastName LIKE :searchBind";
			siteuserList = em.createQuery(jpql, Siteuser.class)
					.setParameter("searchBind", "%"+searchTerm+"%").getResultList();

			return siteuserList;
		}
		return siteuserList;
	}

	@Override
	public Siteuser findById(int id) {
		Siteuser siteuser = em.find(Siteuser.class, id);
		return siteuser;
	}

	@Override
	public Siteuser findByUsernamePwd(String username, String password) {
		String jpql = "select siteuser from Siteuser siteuser WHERE siteuser.password = :passwordBind AND siteuser.username = :usrnameBind";
		List<Siteuser> siteuserList = em.createQuery(jpql, Siteuser.class).setParameter("usrnameBind", username)
				.setParameter("passwordBind", password).getResultList();
		if (siteuserList.size() != 0) {
			return siteuserList.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<Siteuser> findAll() {
		String jpql = "select siteuser from Siteuser siteuser";
		List<Siteuser> siteuserList = em.createQuery(jpql, Siteuser.class).getResultList();
		return siteuserList;
	}

	public Siteuser updateSiteuser(Siteuser siteuser) {
		Siteuser mngd = siteuser;
		try {
			mngd = em.find(Siteuser.class, siteuser.getId());
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
			e.printStackTrace();
			return mngd;
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
		try {
			em.persist(siteuser);
			em.flush();
		} catch (Exception e) {
			return null;
		}
		return siteuser;
	}

	
}
