// Import the dependencies for testing
const chai = require('chai');
const expect = require('chai').expect;
const chaiHttp = require('chai-http');
const app = require('../index');
const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEsImdlbmVyYXRlX2F0IjoiV2VkbmVzZGF5LCBBcHJpbCA4dGggMjAyMCwgMTI6MTY6MjAgcG0iLCJpYXQiOjE1ODYzMjI5ODB9.acAwWz3xwQBCREYPV4w36dKsDbe55W-WwSMMMdRyPTs'

// Configure chai
chai.use(chaiHttp);
chai.should();

describe("Cores", () => {
	describe("GET /cores", () => {
		// success
		it("should get a single csv record", (done) => {
			let uuid = '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc' //param
			chai.request(app) // base url
			.get(`/cores/csv/${uuid}`) //endpoint with param
			.set("Authorization", "Bearer " + TOKEN) //set the header first
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
			.set("Authorization", "Bearer " + TOKEN) //set the header first
			.end((err, res) => {
				// assertion here
				res.should.have.status(404); 
				done();
			});
		});
	});
});