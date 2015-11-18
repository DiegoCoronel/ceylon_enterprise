import javax.ws.rs {
	path,
	consumes,
	produces,
	get,
	pathParam,
	post,
	put,
	delete
}
import javax.ws.rs.core {
	MediaType
}
import java.lang {
	JLong = Long
}
import person_api.model {
	Person,
	PersonalInfo
}
import java.util {
	List
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
	
	post
	shared formal Person persist(Person person);
	
	put
	path("/{id}")
	shared formal Person update(pathParam("id") JLong id, PersonalInfo personalInfo);
	
	delete
	path("/{id}")
	shared formal Person? remove(pathParam("id") JLong id);
	
	get
	shared formal List<out Person> getAll();
	
}