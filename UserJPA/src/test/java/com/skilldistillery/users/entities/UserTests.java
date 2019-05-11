package com.skilldistillery.users.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserTests {
	private static EntityManagerFactory emf;
	private EntityManager em;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("UserJPA");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test() {
		Siteuser user = em.find(Siteuser.class,  1);
		System.out.println(user.getFirstName());
		assertEquals("Larry", user.getFirstName());
	}

}
