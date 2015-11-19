
shared Anything personsFactory(Anything obj) {
	dynamic {
		dynamic resource = obj;
		return resource("/application-1.0.0/rest/person", dynamic [], dynamic [
			create = dynamic [ method = "POST"; ];
			getAll = dynamic [ method = "GET"; isArray = true; ];
		]);
	}
}

shared Anything personFactory(Anything obj) {
	dynamic {
		dynamic resource = obj;
		return resource("/application-1.0.0/rest/person/:id", dynamic [], dynamic [
			get = dynamic [ method = "GET"; ];
			update = dynamic [ method = "PUT"; params = dynamic [id = "@id";]; ];
			remove = dynamic [ method = "DELETE"; ];
		]);
	}
}