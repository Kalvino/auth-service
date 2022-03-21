# Authentication

## Set up
- bundle install
- bin/rails db:setup

## Login as initialized admin/customer user

admin_credentials = {
    "email": "calv@gmail.com",
    "password": "password"
}

customer_credentials = {
    "email": "customer@user.com",
    "password": "password"
}

OR

- create the user you want (role: {admin/customer}) and login:

{
	"user" :{
        "first_name":"Rapakti",
        "last_name":"Chakilo",
        "email":"rapakti@chakilo.com",
        "role":"customer",
        "password":"password"
	}
}


curl -X POST 'http://localhost:3001/login' \
   -H 'Content-Type: application/json' \
   -d '{ "email": "calv@gmail.com", "password": "password" }'


## Verify token

bin/rails server -p 3001

http://localhost:3001/verify?token={token}



## Test Coverage
Coverage report generated for RSpec to /authentication/coverage.
open /authentication/coverage/index.html on your browser





