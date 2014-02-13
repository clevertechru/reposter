class PlatformService < ActiveRecord::Base
  attr_accessible :title, :api_model, :enabled, :state

end
