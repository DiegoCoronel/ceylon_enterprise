import java.lang {
	JLong = Long
}
import person_service.model {

	PersonImpl
}
import person_api.model {

	Person
}

shared class PersonDao() {
	
	shared Person? byId(JLong id) {
		return PersonImpl.someone {
			id = JLong(1);
			name = "From DAO";
		};
	}
	
}