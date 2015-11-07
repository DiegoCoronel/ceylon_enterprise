native("jvm")
module application "1.0.0" {
	import person_service "1.0.0";
	shared import "org.jboss.resteasy:jaxrs-api" "3.0.11.Final";
}
