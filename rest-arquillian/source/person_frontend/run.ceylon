import ceylon_angular {
	angular,
	document
}
import person_frontend.controller {

	personController
}
"Run the module `person_frontend`."
shared void run() {
	value angularApp = angular.\imodule("angularApp", Array<String> {});
	
	angularApp.controller("PersonController", Array({"$scope", personController of Object}));
	
	// We can't bootstrap AngularJS using `ng-app` because our app
	// is loaded asynchronously.
	angular.bootstrap(document, Array {"angularApp"});
}