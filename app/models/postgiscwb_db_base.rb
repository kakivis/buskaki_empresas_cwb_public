class PostgiscwbDbBase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection POSTGISCWB_DB
end
