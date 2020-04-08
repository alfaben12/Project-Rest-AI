// Import the dependencies for testing
const chai = require('chai');
const expect = require('chai').expect;
const chaiHttp = require('chai-http');
const app = require('../index');

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

		// not found
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
	});
});