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
	Person,
	PersonalInfo
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
		assert(!person.id exists);
		return personDao.persist(person);
	}
	
	shared default actual Person? remove(JLong id)  {
		return personDao.remove(id);
	}
	
	shared default actual Person update(JLong id, PersonalInfo personalInfo) {
		assert(exists person = personDao.byId(id));
		person.update(personalInfo);
		return person;
	}

}