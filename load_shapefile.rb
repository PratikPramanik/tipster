#require 'bundler'
#Bundler.require
require 'geo_ruby/shp4r/shp'

#fname=ARGV[0]

def load_shapefile(fname)
	GeoRuby::Shp4r::ShpFile.open(fname) do |shape_file|
		all_districts = District.all
		shape_file.records.each do |rec|
			district = all_districts.find {|d| d.name.to_i == rec.data.dist_numc.to_i}
			if district
				district.shape=rec.geometry[0]
				district.save
			end
		end
	end
end

#if __FNAME__==whatever
