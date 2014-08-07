class Collection < ActiveRecord::Base
  has_many :user_collections
  has_many :website_collections
end
