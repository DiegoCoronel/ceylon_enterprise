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