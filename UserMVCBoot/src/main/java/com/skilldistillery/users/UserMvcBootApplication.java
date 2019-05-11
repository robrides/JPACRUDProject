package com.skilldistillery.users;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.users")
public class UserMvcBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserMvcBootApplication.class, args);
	}

}
