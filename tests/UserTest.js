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
	describe("POST /user", () => {
		// success
		it("should login and get jwt token", (done) => {
			let body = {
                'username': 'alfaben',
                'password': '123456'
            }
			chai.request(app) // base url
			.post(`/users/login`) //endpoint with param
            .send(body)
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
		});

		// success
		it("should registered a single user record", (done) => {
			let body = {
                'username': 'thariq',
                'password': '12345678',
                'name': 'Thariq Alfa',
                'email': 'thariq@gmail.com'
			}
			
			chai.request(app) // base url
			.post(`/users`) //endpoint with param
            .send(body)
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
		});

		it("should get a single user record", (done) => {
			chai.request(app) // base url
			.get(`/users`) //endpoint with param
			.set("Authorization", "Bearer " + TOKEN) //set the header first
            .send(body)
			.end((err, res) => {
				// assertion here
				res.should.have.status(200); 
				done();
			});
		});
	});
});