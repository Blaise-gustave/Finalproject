class User < ApplicationRecord
  has_secure_password
  validates :fullname, presence: true
  validates :telephone, presence: true
  validates :email, presence: true, uniqueness: true, length: {maximum: 200},format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  

end
