#Rest and Arquillian Tests using Ceylon / JEE

This project has the purpose to show everyone we can use Ceylon for enterprise development
without any loss for currently Java projects.
I´m planning to use:

* Backend: JAX-RS, CDI, JPA, Wildfly
 
* Frontend: Angular, Booststrap

* Tests: Arquillian,  Cuccumber

But of course I dont have full time to work in this project.. I´m doing in my spare time.
Any help will be appreciated, also suggestions, patches, pull requests, etc...  Thanks.

P.S: I`m not an english native speaker, most of my knowledge of English is reading blogs, irc, gitter, etc.. dont stay scared with my tutorial please.. instead open a pull request or issue to fix it ;)

P.S: I´m also learning a lot about Ceylon integration with all the stack of frameworks I choose for implementation.

P.S: I need to say and thank because all this was influenced by: 

* https://github.com/sgalles/ceylon-dddsample

* Angular JS project of @bjansen (I dont remember the repository)

###Architecture

Currently I´m using 5 projects:

- Application: this is just an assembler, it must declare all modules we want deployed in wildfly;
- Person API: This is all contracts of services we want available for users;
- Person Service: This is the concrete project that uses its own stack of technologies to provide de API to users;
- Person Test: This is our quality guarantee, we must validate all services available using Unit and Integration Tests.   
- Ceylon Angular: This project was created to simulate AngularJS framework using safe contracts when possible

###Configure, run and deploy

At the root of the project theres a file **build.xml** that needs to be changed:

1. Point to the right location of your server (wildfly) changing the value of _wildfly_path_
2. Point to the right location of your ceylon (executable) file changing the value of _ceylon_path_
3. Set the ceylon language version you wanna use for this project changing the value of _ceylon_language_version_
 * P.S: This is going to change the token at you _index.html_ as explained below
  
 
#### Understanding build.xml

Theres some targets created to make our life easier:
* **language_configuration**: for now this is necessary just in first configuration, its going to change your _index.html_ replacing the current language version token by the specified language version that you set in build.xml and copy the language to your _webcontent/module_ folder
* **compile**: compile java and js modules
* **deploy**: create a _war_ file based on _application_ and copy to your server
* **copy_frontend**: this project was developed using eclipse, so it has its own folder conventions and this target get the _js modules_ from eclipse and copy them to _webcontent/module_ folder
* **build_and_publish**: depends on all steps, this _should be used_ in first time you are using this project
 * In browser go to http://localhost:8080/application-1.0.0/

###Planned

* Create all backend services
 * [x] JPA
 * [x] CDI
 * [x] JAX-RS
 * [x] API Project
 * [x] Service Project

* Create frontend
 * [x] AngularJS
 * [x] Crud Complete
 * [ ] Polish to make as typesafe as possible

* Create Tests
 * [ ] Unit Test
 * [ ] Integration Test
