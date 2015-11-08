import person_api.model {
	Person
}
import java.lang {
	JLong = Long
}
import javax.persistence {
	id=id__FIELD,
	generatedValue=generatedValue__FIELD,
	table,
	entity
}

entity
table{ name = "person" ;}
shared class PersonImpl satisfies Person {
	
	id
	generatedValue
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