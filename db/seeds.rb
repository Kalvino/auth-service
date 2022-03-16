admin_user_params = {
  user: {
    first_name: 'Jeje',
    last_name: 'Namu',
    email: 'jeje@namu.com',
    role: 'admin',
    password: 'password'
  }
}

customer_user_params = {
  user: {
    first_name: 'Customer',
    last_name: 'User',
    email: 'customer@user.com',
    role: 'customer',
    password: 'password'
  }
}

User.create!(admin_user_params)
User.create!(customer_user_params)
