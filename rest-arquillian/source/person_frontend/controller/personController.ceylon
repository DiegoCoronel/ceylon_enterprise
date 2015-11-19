import ceylon_angular {
	Location,
	Resource
}

shared dynamic PersonListControllerScope {
	shared formal variable Anything(Integer) editPersonPage;
	shared formal variable Anything() newPersonPage;
	shared formal variable Anything(Integer) removePerson;
	shared formal variable Anything persons;
}

shared void personListController(PersonListControllerScope scope, Location location, Resource routeParams, Resource personsResource, Resource personResource) {
	scope.editPersonPage = (Integer idPerson) {
		dynamic {
			location.path("/person-edit/``idPerson``");
		}
	};
	
	scope.newPersonPage = () {
		dynamic {
			location.path("/new");
		}
	};
	
	scope.removePerson = (Integer idPerson) {
		dynamic {
			dynamic res = personResource;
			res.remove(dynamic[ id = idPerson; ]); 
			
			dynamic resPersons = personsResource;
			scope.persons = resPersons.getAll();
		}	
	};
	
	dynamic  {
		dynamic res = personsResource;
		scope.persons = res.getAll();
	}
	
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