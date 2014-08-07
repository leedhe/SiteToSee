class User < ActiveRecord::Base
  has_many :user_collections
  
  has_secure_password
 
end
