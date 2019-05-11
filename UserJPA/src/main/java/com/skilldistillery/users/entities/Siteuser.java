package com.skilldistillery.users.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Siteuser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String email;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	private String password;
	@Column(name="account_status")
	private String accountStatus;
	@Column(name="job_title")
	private String jobTitle;
	private int salary;
	@Column(name="num_visits")
	private int numVisits;
	@Column(name="user_url")
	private String userUrl;
	@Column(name="user_type")
	private String userType;
	
	
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getNumVisits() {
		return numVisits;
	}
	public void setNumVisits(int numVisits) {
		this.numVisits = numVisits;
	}
	public String getUserUrl() {
		return userUrl;
	}
	public void setUserUrl(String userUrl) {
		this.userUrl = userUrl;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Siteuser [id=");
		builder.append(id);
		builder.append(", username=");
		builder.append(username);
		builder.append(", email=");
		builder.append(email);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append(", password=");
		builder.append(password);
		builder.append(", accountStatus=");
		builder.append(accountStatus);
		builder.append(", jobTitle=");
		builder.append(jobTitle);
		builder.append(", salary=");
		builder.append(salary);
		builder.append(", numVisits=");
		builder.append(numVisits);
		builder.append(", userUrl=");
		builder.append(userUrl);
		builder.append(", userType=");
		builder.append(userType);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	
}
