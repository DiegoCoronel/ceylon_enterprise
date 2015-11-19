import ceylon_angular {
	Location,
	Resource
}

shared dynamic PersonControllerScope {
	shared formal variable Anything() newPerson;
	shared formal variable Anything() updatePerson;
	shared formal variable Anything() cancel;
	shared variable formal dynamic user;
}

shared void personController(PersonControllerScope scope, Location location, Resource routeParams, Resource personsResource, Resource personResource) {
	
	scope.newPerson = () {
		dynamic {
			dynamic res = personsResource;
			res.create(scope.user);
			location.path("/");
		}
	}; 
	
	scope.updatePerson = () {
		dynamic {
			dynamic res = personResource;
			res.update(scope.user);
			location.path("/");
		}
	};
	
	scope.cancel = () {
		dynamic {
			location.path("/");
		}
	};
	
	dynamic {
		dynamic res = personResource;
		dynamic params = routeParams;
		scope.user = res.get(dynamic[ id = params.id; ]); 
	}
	
}