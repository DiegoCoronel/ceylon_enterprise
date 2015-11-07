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
	inject = inject__FIELD
}

shared class ResourceImpl satisfies Resource {
	
	inject
	late PersonDao personDao;
	
	shared new() {
		
	}
	
	shared actual Person? get(JLong id) {
		return personDao.byId(id);
	}
	
	shared actual Person persist(Person person) {
		return PersonImpl.someone {
			id => JLong(1);
			name => person.name;
		};
	}
	
}