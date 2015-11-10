
shared dynamic PersonControllerScope {
	shared formal variable String sayHello;
}

shared void personController(PersonControllerScope scope) {
	scope.sayHello = "Hello Diego";
}