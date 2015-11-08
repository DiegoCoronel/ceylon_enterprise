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
	
}