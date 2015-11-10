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

shared dynamic Angular {
    shared formal NgModule \imodule(String name, Array<String> dependencies);
    shared formal void bootstrap(Document doc, Array<String> modules);
}

shared dynamic NgModule {
    shared formal AngularController controller(String name, Array<Object> dependenciesAndFunction);
}

shared dynamic AngularController {
    
}