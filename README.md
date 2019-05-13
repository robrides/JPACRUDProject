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
* Connect to your app from a browser using `http://youripaddress:AppPort/nameofproject`

### How to Use

This application models user login, registration, and account management. The supplied SQL script includes a mix of admin and user accounts. There are three user type choices in the application (administrator, customer, employee) however, there are essentially just two roles, administrator and non-administrator.  

Examining the data in the database will provide the login credentials as they are stored in clear-text.  As a non-administrator role the user has access to either register a new account or update their account.  An administrator has access to additional fields as well as an administrator console with search capability as well as the full list of user accounts. An administrator can register new accounts including setting user type which a non-administrator does not have access to.  An administrator can also delete accounts as well as update all existing accounts.

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
* Improve exception handling.
* Add annotations to include @Error` as well as min and max values.
