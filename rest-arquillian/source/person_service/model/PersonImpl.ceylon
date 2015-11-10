import person_api.model {
	Person,
	PersonalInfo
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
shared class PersonImpl(id = null, name = "") satisfies Person {
	
	id
	generatedValue
	shared actual variable JLong? id;
	
	shared actual variable String name;
	
	shared actual void update(PersonalInfo personalInfo) {
		name = personalInfo.name;
	}
	
}