import ceylon_angular {
	Location,
	Resource,
	Factory
}

shared dynamic PersonControllerScope {
	shared formal variable Anything() newPerson;
	shared formal variable Anything() updatePerson;
	shared formal variable Anything() cancel;
	shared variable formal dynamic user;
}

shared void personController(PersonControllerScope scope, Location location, Resource routeParams, Factory personListFactory, Factory personFactory) {
	
	scope.newPerson = () {
		dynamic {
			
			void onCreate(dynamic response) {
				location.path("/");	
			}
			
			dynamic res = personListFactory;
			res.create(scope.user, onCreate);
			
		}
	}; 
	
	scope.updatePerson = () {
		dynamic {
			
			void onEdit(dynamic response) {
				location.path("/");	
			}
			
			dynamic res = personFactory;
			res.update(scope.user, onEdit);
			
		}
	};
	
	scope.cancel = () {
		dynamic {
			location.path("/");
		}
	};
	
	dynamic {
		dynamic res = personFactory;
		dynamic params = routeParams;
		
		if(exists check = params.id) {
			scope.user = res.get(dynamic[ id = check; ]); 
		}
	}
	
}