
shared Anything personFactory(Anything obj) {
	dynamic {
		dynamic resource = obj;
		return resource("/application-1.0.0/rest/person", dynamic [], dynamic [
			create = dynamic [ method = "POST"; ];
		]);
	}
}