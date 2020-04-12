// Import the dependencies for testing
const chai = require('chai');
const expect = require('chai').expect;
const chaiHttp = require('chai-http');
const app = require('../index');
const TOKEN = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjEsImdlbmVyYXRlX2F0IjoiV2VkbmVzZGF5LCBBcHJpbCA4dGggMjAyMCwgMTI6MTY6MjAgcG0iLCJpYXQiOjE1ODYzMjI5ODB9.acAwWz3xwQBCREYPV4w36dKsDbe55W-WwSMMMdRyPTs'

// Configure chai
chai.use(chaiHttp);
chai.should();

describe("Reports", () => {
	describe("GET /reports", () => {
		// success
		it("should get all csv record", (done) => {
			chai.request(app) // base url
			.get(`/reports`) //endpoint with param
			.set("Authorization", "Bearer " + TOKEN) //set the header first
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
		});

        // success
		it("should get csv record with range date", (done) => {
            let start = '2020-03-01'
            let end = '2020-04-30'
			chai.request(app) // base url
			.get(`/reports/date_range?start=${start}&end=${end}`) //endpoint with param
			.set("Authorization", "Bearer " + TOKEN) //set the header first
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
        });
        
		// not found
		it("should not get csv record with range date", (done) => {
            let start = '2010-04-1'
            let end = '2010-04-30'
			chai.request(app) // base url
			.get(`/reports/date_range?start=${start}&end=${end}`) //endpoint with param
			.set("Authorization", "Bearer " + TOKEN) //set the header first
			.end((err, res) => {
				// assertion here
				res.should.have.status(404); 
				done();
			});
        });
	});
});