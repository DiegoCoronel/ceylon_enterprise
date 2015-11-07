native("jvm")
module person_service "1.0.0" {
	import java.base "8";
	import person_api "1.0.0";
	import ceylon.interop.java "1.2.1";
	
	//Allow the bind between interfaces and concrete implementations
	shared import "com.fasterxml.jackson.core:jackson-databind" "2.5.1";
	shared import "com.fasterxml.jackson.core:jackson-core" "2.5.1";
	
	//Allowe inject/context (CDI)
	shared import "javax.inject:javax.inject" "1";
	shared import "javax.enterprise:cdi-api" "1.2";
}
