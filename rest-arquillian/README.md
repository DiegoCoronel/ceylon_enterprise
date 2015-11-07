#Rest and Arquillian Tests using Ceylon / JEE

This project has the purpose to show everyone we can use Ceylon for enterprise development
without any loss for currently Java projects.
I´m planning to use:

* Backend
** JAX-RS
** CDI
** JPA
** Wildfly

* Frontend
** Angular
** Booststrap

* Tests
** Arquillian
** Cuccumber

But of course I dont have full time to work in this project.. I´m doing in my spare time.
Any help will be appreciated, also suggestions, patches, pull requests, etc...  Thanks.

P.S: I´m also learning a lot about Ceylon integration with all the stack of frameworks I choose for implementation.

###Architecture

Currently I´m using 4 projects:

- Application: this is just an assembler, it must declare all modules we want deployed in wildfly;
- Person API: This is all contracts of services we want available for users;
- Person Service: This is the concrete project that uses its own stack of technologies to provide de API to users;
- Person Test: This is our quality guarantee, we must validate all services available using Unit and Integration Tests.   

###Deploy

There is a build.xml, check it, change your path and you are done.  

* In browser go to http://localhost:8080/application-1.0.0/rest/person/health to check if its working
