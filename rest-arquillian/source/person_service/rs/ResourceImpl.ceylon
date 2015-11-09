import java.lang {
	JLong=Long
}
import javax.ejb {
	stateless
}
import javax.inject {
	inject
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

inject
stateless
shared class ResourceImpl(PersonDao personDao) satisfies Resource {
	
	shared default actual Person? get(JLong id) {
		return personDao.byId(id);
	}
	
	shared default actual Person persist(Person person) {
		return personDao.persist(person);
	}

}