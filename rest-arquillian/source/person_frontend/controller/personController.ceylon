import ceylon_angular {
	Location,
	Resource
}

shared dynamic PersonControllerScope {
	shared formal variable Anything() newPerson;
	shared formal dynamic user;
}

shared void personController(PersonControllerScope scope, Location location, Resource resource) {
	location.path("/new");
	scope.newPerson = () {
		dynamic {
			dynamic res = resource;
			res.create(scope.user);
			location.path("/new");
		}
	}; 
}