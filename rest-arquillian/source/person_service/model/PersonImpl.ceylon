import person_api.model {
	Person
}
import java.lang {
	JLong = Long
}

shared class PersonImpl satisfies Person {
	
	shared actual variable JLong? id;
	shared actual variable String name;

	shared new() {
		this. id = null;
		this.name = "";
	}
	
	shared new someone(JLong id, String name) {
		this.id = id;
		this.name = name;
	}
	
}