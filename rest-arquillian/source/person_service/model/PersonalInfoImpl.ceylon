import person_api.model {
	PersonalInfo
}

shared class PersonalInfoImpl(name) satisfies PersonalInfo {
	
	shared actual String name;
	
}