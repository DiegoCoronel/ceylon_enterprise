import javax.ws.rs {
	path,
	consumes,
	produces,
	get,
	pathParam,
	post
}
import javax.ws.rs.core {
	MediaType
}
import java.lang {
	JLong = Long
}
import person_api.model {
	Person
}

path("/person")
produces({MediaType.\iAPPLICATION_JSON})
consumes({MediaType.\iAPPLICATION_JSON})
shared interface Resource {

	path("/health")	
	get
	shared default Boolean test() => true;
	
	path("/{id}")
	get
	shared formal Person? get( pathParam("id") JLong id );
	
	path("/persist")
	post
	shared formal Person persist(Person person);
	
}