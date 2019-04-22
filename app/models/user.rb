class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

  validates :email, presence: true
  validates_uniqueness_of :email, :case_sensitive => false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def authenticate_with_credentials(email,password)
    user_found = User.find_by email: email
    if user_found && user_found.authenticate(password)
      user_found
    else
      nil
    end
  end
end
 