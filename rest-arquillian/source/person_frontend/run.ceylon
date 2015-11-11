import ceylon_angular {
	angular,
	document,
	RouteProvider
}

import person_frontend.controller {
	personController
}
import person_frontend.factory {
	personFactory
}

"Run the module `person_frontend`."
shared void run() {
	//Create Module
	value angularApp = angular.\imodule("angularApp", Array<String> {"ngRoute", "ngResource"});
	
	//Configure Route
	angularApp.config(Array({"$routeProvider", configureRoute of Object}));
	
	//Configure Factories
	angularApp.factory("PersonFactory", Array({"$resource", personFactory of Object}));
	
	//Configure Controllers
	angularApp.controller("PersonController", Array(
		{"$scope", "$location", "PersonFactory", personController of Object})
	);
	
	// We can't bootstrap AngularJS using `ng-app` because our app
	// is loaded asynchronously.
	angular.bootstrap(document, Array {"angularApp"});
}

void configureRoute(RouteProvider routeProvider) {
	dynamic {
		routeProvider.when(
			"/new", 
			dynamic [
				templateUrl = "views/person-creation.html";
				controller = "PersonController";
			]
		);
	}
}