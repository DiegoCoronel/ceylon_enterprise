import java.lang {
	JLong = Long
}
import person_service.model {
	PersonImpl
}
import person_api.model {
	Person
}
import javax.inject {
	inject
}
import javax.persistence {
	EntityManager,
	NoResultException
}
import ceylon.interop.java {
	javaClass
}
import java.util {
	List
}

inject
shared class PersonDao(EntityManager entityManager) {
	
	shared Person? byId(JLong id) {
		value query = entityManager.createQuery("from PersonImpl where id = :idPerson", javaClass<PersonImpl>());
		query.setParameter("idPerson", id);
		try {
			return query.singleResult;
		} catch(NoResultException noResult) {
			return null;
		}
	}
	
	shared Person persist(Person person) {
		entityManager.persist(person);
		return person;
	}
	
	shared Person? remove(JLong id) {
		Person? person = byId(id);
		if(exists person) {
			entityManager.remove(person);
		}
		return person;
	}
	
	shared List<out Person> getAll() {
		return entityManager.createQuery("from PersonImpl", javaClass<PersonImpl>()).resultList;
	}
	
}