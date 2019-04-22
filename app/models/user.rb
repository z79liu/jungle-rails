class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true

end
 