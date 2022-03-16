class User < ApplicationRecord
  has_secure_password

  enum role: {
    admin: 'admin',
    customer: 'customer'
  }

  has_many :accounts, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :role, presence: true
  validates :password, presence: true, on: :create

  def is_admin?
    role == 'admin'
  end
end
