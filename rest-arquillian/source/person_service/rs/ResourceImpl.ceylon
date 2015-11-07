import person_api.rs { 
	Resource
 }
import java.lang {
	JLong = Long
}
import person_api.model {

	Person
}
import person_service.model {

	PersonImpl
}

shared class ResourceImpl() satisfies Resource {
	
	shared actual Person? get(JLong id) {
		return null;
	}
	
	shared actual Person persist(Person person) {
		return PersonImpl.someone {
			id => JLong(1);
			name => person.name;
		};
	}
	
}