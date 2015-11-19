import ceylon_angular {
	Location,
	Resource,
	Factory
}
shared dynamic PersonListControllerScope {
	shared formal variable Anything(Integer) editPersonPage;
	shared formal variable Anything() newPersonPage;
	shared formal variable Anything(Integer) removePerson;
	shared formal variable Anything persons;
}

shared void personListController(PersonListControllerScope scope, Location location, Resource routeParams, Factory personListFactory, Factory personFactory) {
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
			
			void onRemove(dynamic element) {
				dynamic resPersons = personListFactory;
				scope.persons = resPersons.query();				
			}
			
			dynamic res = personFactory;
			res.remove(dynamic[ id = idPerson; ], onRemove); 
		}	
	};
	
	dynamic  {
		dynamic res = personListFactory;
		scope.persons = res.query();
	}
	
}