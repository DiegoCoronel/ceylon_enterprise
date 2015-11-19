shared Document document {
    dynamic {
        return window.document;
    }
}

shared Angular angular {
    dynamic {
        return window.angular;
    }
}

shared dynamic Document {}

shared dynamic Resource {}

shared dynamic Factory {}

shared dynamic Location {
	shared formal void path(String path);
}

shared dynamic RouteProvider {
	shared formal RouteProvider when(String path, dynamic config);
}
shared dynamic HttpProvider {
	shared formal dynamic defaults;
}

shared dynamic Angular {
    shared formal NgModule \imodule(String name, Array<String> dependencies);
    shared formal void bootstrap(Document doc, Array<String> modules);
}

shared dynamic NgModule {
    shared formal AngularController controller(String name, Array<Object> dependenciesAndFunction);
    shared formal void config(Array<Object> params);
    shared formal void factory(String name, Array<Object> params);
}

shared dynamic AngularController {
    
}