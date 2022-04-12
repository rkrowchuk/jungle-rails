class User < ActiveRecord::Base
  has_secure_password

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true, uniqueness: {case_sensitive: false}
end
