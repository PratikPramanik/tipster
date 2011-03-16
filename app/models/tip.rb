class Tip < ActiveRecord::Base
  belongs_to :district
  
  before_validation :geocode_address
  before_save :determine_district!
  def determine_district!
    self.district = District.all.find {|district| GeoRuby::SimpleFeatures::Point.from_x_y(lng,lat).is_in_polygon?(district.shape)}
  end
  
  private
  
  def geocode_address
    geo = Geokit::Geocoders::MultiGeocoder.geocode("#{address}, Philidelphia, PA")
    errors.add(:address, "could not be found") if address.blank? || !geo.success 
    self.lat, self.lng = geo.lat,geo.lng if geo.success
  end
  
end
