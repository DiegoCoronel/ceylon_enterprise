import ceylon_angular {
	RouteProvider
}

void configureRoute(RouteProvider routeProvider) {
	dynamic {
		routeProvider
				.when(
			"/new", 
			dynamic [
			templateUrl = "views/person-creation.html";
			controller = "PersonController";
			]
		)
				.when(
			"/person-list", 
			dynamic [
			templateUrl = "views/person-list.html";
			controller = "PersonController";
			]
		);
	}
}