## Individual Spring/JPA CRUD Project
#### Skill Distillery Homework - Week 8

### Overview

This is a Java Persistence Application Programming Interface (JPA API) webapp with basic CRUD functionality. The objective in developing this application was to reenforce the steps to build and deploy such a webapp to include: creating a SQL database, configuring a JPA project using Spring boot and Gradle, mapping entities to SQL tables, TDD creating JUnit tests, integrating a Spring MVC project with a JPA project, performing basic CRUD operations, and deploying an application to AWS.  

#### Note

Though the project models a user login, registration, and account management application, it was not designed using a secure mechanism.  This application was designed to explore and demonstrate basic CRUD functionality only and was accomplished in just two days. Also, uniqueness of the username and email is performed in the controller. This is inefficient and should be enforce as unique constraints in the database.

### Installation

* Prerequisites: Spring STS IDE, AWS Linux AMI, JDK, MySQL, your chosen port allowed for external traffic to your server.
* Run the SQL script provided to build the database.
* With a copy of the project in your Spring Tool Suite, create a .war file.
* Deploy the .war file to your server.
* Ensure the database account to be used by the app exists in MySQL.
* Connect to your app from a browser using http://youripaddress:AppPort/nameofproject

### UML Diagram

![UML Diagram](https://github.com/robrides/JPACRUDProject/blob/master/UserJPA/UserJPACRUD_UML.png)

### Entity Relationship Diagram

![ERD](https://github.com/robrides/JPACRUDProject/blob/master/JPACRUDProjectERD.png)

### Technologies Used

Spring Tool Suite (STS/Eclipse), Spring MVC Framework, Java, JPA, Gradle, Tomcat, MySQL, MySQL WorkBench, C.R.U.D functionality, MAMP (MacOS, Apache, MySQL, PHP/Python/Perl(Not used)), JBoss, log4j, JDK, HTML, CSS, Atom, Bash Terminal

### Lessons Learned

Java persistence query language is similar to SQL but overlooked nuances can slow development. TDD is key to ensure JPA mappings and queries are correct. Continue practice with Bootstrap as styling is time consuming. Learned additional syntax for use with SpringMVC and .jsp files.

### Future Improvements

* Enforce unique constraints on the email and username in the database; handle MySQL error messages when this constraint is violated.
* Implement a robust login mechanism exploring sessions and robust authentication solutions.
* Implement TLS (SSL) / https / server-side PKI certificates.
* Refine styling.
