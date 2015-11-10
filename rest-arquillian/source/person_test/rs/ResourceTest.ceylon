//import org.junit {
//	test,
//	Assert {
//		...
//	}
//}
//import org.junit.runner {
//	runWith
//}
//
//import org.jboss.arquillian.junit {
//	Arquillian
//}
//import org.jboss.arquillian.container.test.api {
//	deployment
//}
//import org.jboss.shrinkwrap.api.spec {
//	JavaArchive,
//	WebArchive
//}
//import java.io {
//
//	File
//}
//import ceylon.interop.java {
//
//	javaClass
//}
//import org.jboss.shrinkwrap.api {
//
//	ShrinkWrap
//}
//import org.jboss.shrinkwrap.api.importer {
//
//	ZipImporter
//}
//
//
//runWith(`class Arquillian`)
//shared class ResourceTest() {
//
//	deployment
//	shared JavaArchive createDeployment() {
//		value result =  (ShrinkWrap	.create(javaClass<ZipImporter>(), "application-arq.war")
//							.importFrom(File("application-1.0.0.war"))
//							.as(javaClass<WebArchive>())) of JavaArchive;
//		
//	}
//
//	test
//	shared void test() {
//		assertEquals(1, 1);
//	}
//	
//}