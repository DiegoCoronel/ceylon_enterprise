import javax.persistence {
	persistenceContext = persistenceContext__FIELD,
	EntityManager
}
import javax.enterprise.inject {
	produces = produces__FIELD
}
class DatasourceProducer(entityManager) {
	
	produces
	persistenceContext
	EntityManager entityManager;
	
}