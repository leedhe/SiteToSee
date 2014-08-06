class User < ActiveRecord::Base
  has_many :user_collection
  
  has_secure_password
 
end
