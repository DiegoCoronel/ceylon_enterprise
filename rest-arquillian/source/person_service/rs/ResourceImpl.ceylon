import java.lang {
	JLong=Long
}

import person_api.model {
	Person
}
import person_api.rs {
	Resource
}

import person_service.dao {
	PersonDao
}
import person_service.model {
	PersonImpl
}
import javax.inject {
	inject
}
import javax.ejb {
	stateless
}

inject
stateless
shared class ResourceImpl(PersonDao personDao) satisfies Resource {
	
	shared default actual Person? get(JLong id) {
		return personDao.byId(id);
	}
	
	shared default actual Person persist(Person person) {
		return PersonImpl.someone {
			id => JLong(1);
			name => person.name;
		};
	}
	
}