class Tip < ActiveRecord::Base
  
  before_validation :geocode_address
  
  private
  
  def geocode_address
    geo = Geokit::Geocoders::MultiGeocoder.geocode("#{address}, Philidelphia, PA")
    errors.add(:address, "could not be resolved") if address.blank? || !geo.success 
    self.lat, self.lng = geo.lat,geo.lng if geo.success
  end
end
