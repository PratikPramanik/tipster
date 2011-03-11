class District < ActiveRecord::Base
  has_many :tips
  # srid 4326
end
