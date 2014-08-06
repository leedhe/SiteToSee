class Collection < ActiveRecord::Base
  has_many :user_collection
  has_many :website_collection
end
