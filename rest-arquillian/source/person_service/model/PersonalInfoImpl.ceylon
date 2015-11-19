import person_api.model {
	PersonalInfo
}
import java.lang {
	JLong = Long
}

shared class PersonalInfoImpl(id, name) satisfies PersonalInfo {
	
	shared actual JLong id;
	shared actual String name;
	
}