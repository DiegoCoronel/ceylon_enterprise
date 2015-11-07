import person_api.person.rs { 
	Resource
 }
import java.lang {
	JLong = Long
}
import person_api.model {

	Person
}

shared class ResourceImpl() satisfies Resource {
	
	shared actual Person? get(JLong id) {
		return null;
	}
	
	shared actual Person persist(Person person) {
		return object satisfies Person {
			shared actual JLong? id => JLong(1);
			shared actual String name => "Diego";
		};
	}
	
}