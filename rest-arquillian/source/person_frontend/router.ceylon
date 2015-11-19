import ceylon_angular {
	RouteProvider
}

void configureRoute(RouteProvider routeProvider) {
	dynamic {
		routeProvider
		.when(
			"/", 
			dynamic [
			templateUrl = "views/person-list.html";
			controller = "PersonListController";
			]
		)
		.when(
			"/new", 
			dynamic [
			templateUrl = "views/person-creation.html";
			controller = "PersonController";
			]
		)
		.when(
			"/person-edit/:id", 
			dynamic [
			templateUrl = "views/person-edit.html";
			controller = "PersonController";
			]
		)
		;
		
	}
}