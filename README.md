## Individual Spring/JPA CRUD Project
#### Skill Distillery Homework - Week 8

### Overview

This is a Java Persistence Application Programming Interface (JPA API) webapp with basic CRUD functionality. The objective in developing this application was to reenforce the steps to build and deploy such a webapp to include: creating a SQL database, configuring a JPA project using Spring boot and Gradle, mapping entities to SQL tables, TDD creating JUnit tests, integrating a Spring MVC project with a JPA project, performing basic CRUD operations, and deploying an application to AWS.

### Installation
* Prerequisites: Spring STS IDE, AWS Linux AMI, JDK, MySQL, port 8080 allowed for external traffic to your server.
* Run the SQL script provided to build the database.
* With a copy of the project in your Spring Tool Suite, create a .war file.
* Deploy the .war file to your server.
* Ensure the database account to be used by the app exists in MySQL.
* Connect to your app from a browser using http://youripaddress:8080/nameofproject

### UML Diagram

![UML Diagram](https://github.com/robrides/JPACRUDProject/blob/master/UserJPA/UserJPACRUD_UML.png)

### Entity Relationship Diagram
![ERD](https://github.com/alfarog1/SpringMVCFilmCRUD/blob/master/FilmSiteERDiagram.png)

### Technologies Used
Spring Tool Suite (STS/Eclipse), Spring MVC Framework, Java, JPA, Gradle, Tomcat, MySQL, MySQL WorkBench, C.R.U.D functionality, MAMP (MacOS, Apache, MySQL, PHP/Python/Perl(Not used)), JBoss, log4j, JDK, HTML, CSS, Atom, Bash Terminal

### Lessons Learned

Java persistence query language is similar to SQL but overlooked nuances can slow development. TDD is key to ensure mappings and queries are correct.
