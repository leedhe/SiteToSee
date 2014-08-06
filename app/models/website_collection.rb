class WebsiteCollection < ActiveRecord::Base
  belongs_to :websites
  belongs_to :collections
end

