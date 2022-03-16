# Authentication

## Set up
bundle install
bin/rails db:setup

## Login as initialized admin/customer user

admin_credentials = {
    "email": "jeje@namu.com",
    "password": "password"
}

customer_credentials = {
    "email": "customer@user.com",
    "password": "password"
}

OR

- create user and login as the user:

{
	"user" :{
        "first_name":"Rapakti",
        "last_name":"Chakilo",
        "email":"rapakti@chakilo.com",
        "role":"customer",
        "password":"password"
	}
}

## Verify token

bin/rails server -p 3001

http://localhost:3001/verify?token={token}

## Test Coverage
Coverage report generated for RSpec to /authentication/coverage.
open /authentication/coverage/index.html on your browser





