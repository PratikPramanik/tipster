class District < ActiveRecord::Base
  has_many :tips
  serialize :shape
  # srid 4326
end
