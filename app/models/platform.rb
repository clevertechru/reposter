class Platform < ActiveRecord::Base
  attr_accessible :category_id, :description, :service_id, :state, :title, :token, :type_id, :user_id

  TYPE_DESTINATION = 1
  TYPE_SOURCE      = 2

end
