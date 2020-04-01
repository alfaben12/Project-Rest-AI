// Import the dependencies for testing
const chai = require('chai');
const expect = require('chai').expect;
const chaiHttp = require('chai-http');
const app = require('../index');

// Configure chai
chai.use(chaiHttp);
chai.should();

describe("Cores", () => {
	
	describe("GET /cores", () => {
		// success
		it("should get a single csv record", (done) => {
			let uuid = 'b6402d68-b62f-44a1-903a-ab49f7fb5b13' //param
			chai.request(app) // base url
			.get(`/cores/csv/${uuid}`) //endpoint with param
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
		});

		// not found
		it("should not get a single csv record", (done) => {
			let uuid = 'wrong-param' //param
			chai.request(app) // base url
			.get(`/cores/csv/${uuid}`) //endpoint with param
			.end((err, res) => {
				// assertion here
				res.should.have.status(404); 
				done();
			});
		});
	});
});