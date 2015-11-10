import java.lang {
	JLong = Long
}

shared interface Person {
	
	shared formal variable JLong? id;
	shared formal variable String name;
	
	shared formal void update(PersonalInfo pernsonalInfo);
	
}