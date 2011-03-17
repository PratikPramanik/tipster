class Tip < ActiveRecord::Base
  belongs_to :district

  before_validation :geocode_address
    	#maybe have a validation too?
  before_validation :enforce_contact_privacy!
  before_save :determine_district!

  
  def determine_district!
    self.district = District.all.find {|district| GeoRuby::SimpleFeatures::Point.from_x_y(lng,lat).is_in_polygon?(district.shape)}
  end
  
  def district_email_address
    email_address = self.district ? self.district.email : $DEFAULT_EMAIL
  end
  
  private
  def enforce_contact_privacy!
    unless self.contact
      self.contact_name=nil
      self.contact_email=nil
      self.contact_phone=nil
    end
  end
  def geocode_address
    geo = Geokit::Geocoders::MultiGeocoder.geocode("#{address}, Philidelphia, PA")
    errors.add(:address, "could not be found") if address.blank? || !geo.success 
    self.lat, self.lng = geo.lat,geo.lng if geo.success
  end  
end
