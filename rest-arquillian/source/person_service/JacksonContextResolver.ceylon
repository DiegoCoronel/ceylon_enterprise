import com.fasterxml.jackson.databind {
	ObjectMapper
}
import javax.ws.rs.ext {
	ContextResolver,
	provider
}
import java.lang {
	Class
}
import javax.ws.rs {
	produces
}
import javax.ws.rs.core {
	MediaType
}

import ceylon.interop.java {
	javaClass
}
import com.fasterxml.jackson.databind.\imodule {
	SimpleModule
}
import person_api.model {
	Person
}
import person_service.model {
	PersonImpl
}

provider
produces ({ MediaType.\iAPPLICATION_JSON })
class JacksonContextResolver satisfies ContextResolver<ObjectMapper> {
	
	ObjectMapper objectMapper;
	
	shared new () {
		this.objectMapper = ObjectMapper();
		
		value mapping = SimpleModule();
		mapping.addAbstractTypeMapping<Person>(javaClass<Person>(), javaClass<PersonImpl>());
		
		objectMapper.registerModule(mapping);
	}
	
	shared actual default ObjectMapper getContext(Class<out Object> objectType) {
		return objectMapper;
	}
}
