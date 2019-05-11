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
	void test_entity_mappings_function_as_expected() {
		Siteuser user = em.find(Siteuser.class,  1);
		assertEquals("Larry", user.getFirstName());
		assertEquals("Kong", user.getLastName());
		assertEquals("username", user.getUsername());
		assertEquals("first.last@email.com", user.getEmail());
		assertEquals("passwd", user.getPassword());
		assertEquals("active", user.getAccountStatus());
		assertEquals("Job Title", user.getJobTitle());
		assertEquals(89965, user.getSalary());
		assertEquals(10, user.getNumVisits());
		assertEquals("http://www.robcodes.pro", user.getUserUrl());
		assertEquals(null, user.getUserType());
		assertEquals(null, user.getLastLogin());
	}

}
