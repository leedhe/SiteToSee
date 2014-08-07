class WebsiteCollection < ActiveRecord::Base
  belongs_to :website
  belongs_to :collection
end

