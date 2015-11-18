import ceylon_angular {
	Location,
	Resource
}

shared dynamic PersonControllerScope {
	shared formal variable Anything() newPerson;
	shared formal variable Anything() newPersonPage;
	shared formal dynamic user;
	shared formal variable Anything persons;
}
variable shared Boolean passou = false;
shared void personController(PersonControllerScope scope, Location location, Resource resource) {
	scope.newPerson = () {
		dynamic {
			passou = false;
			dynamic res = resource;
			res.create(scope.user);
			location.path("/person-list");
		}
	}; 
	
	scope.newPersonPage = () {
		dynamic {
			location.path("/new");
		}
	}; 

	dynamic  {
		dynamic res = resource;
		scope.persons = res.getAll();
	}
	
}