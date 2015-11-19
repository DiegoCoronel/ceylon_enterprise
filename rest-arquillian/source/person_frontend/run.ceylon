import ceylon_angular {
	angular,
	document
}
import person_frontend.controller {
	personListController,
	personController
}
import person_frontend.factory {
	personFactory,
	personsFactory
}

"Run the module `person_frontend`."
shared void run() {
	//Create Module
	value angularApp = angular.\imodule("angularApp", Array<String> {"ngRoute", "ngResource"});
	
	//Configure Route
	angularApp.config(Array({"$routeProvider", configureRoute of Object}));
	
	//Configure Factories
	angularApp.factory("PersonsFactory", Array({"$resource", personsFactory of Object}));
	angularApp.factory("PersonFactory", Array({"$resource", personFactory of Object}));
	
	//Configure Controllers
	angularApp.controller("PersonListController", Array(
		{"$scope", "$location", "$routeParams", "PersonsFactory", "PersonFactory", personListController of Object})
	);
	angularApp.controller("PersonController", Array(
		{"$scope", "$location", "$routeParams", "PersonsFactory", "PersonFactory", personController of Object})
	);
	
	// We can't bootstrap AngularJS using `ng-app` because our app
	// is loaded asynchronously.
	angular.bootstrap(document, Array {"angularApp"});
}
