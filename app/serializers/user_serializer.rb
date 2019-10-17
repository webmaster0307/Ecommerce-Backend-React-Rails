class UserSerializer 
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :username, :email, :password_digest

  has_many :businesses, dependent: :destroy
end
