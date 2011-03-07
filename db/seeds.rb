# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

District.create([
  {:name => '25th District',    :area => 'East',      :email => 'police.co_25@phila.gov'}, 
  {:name => '24th District',    :area => 'East',      :email => 'police.co_24@phila.gov'}, 
  {:name => '26th District',    :area => 'East',      :email => 'police.co_26@phila.gov'}, 
  {:name => '5th District',     :area => 'Northwest', :email => 'police.co_05@phila.gov'}, 
  {:name => '39th District',    :area => 'Northwest', :email => 'police.co_39@phila.gov'}, 
  {:name => '35th District',    :area => 'Northwest', :email => 'police.co_35@phila.gov'}, 
  {:name => '14th District',    :area => 'Northwest', :email => 'police.co_14@phila.gov'}, 
  {:name => '2nd District',     :area => 'Northeast', :email => 'police.co_02@phila.gov'}, 
  {:name => '7th District',     :area => 'Northeast', :email => 'police.co_07@phila.gov'}, 
  {:name => '8th District',     :area => 'Northeast', :email => 'police.co_08@phila.gov'}, 
  {:name => '6th District',     :area => 'Central',   :email => 'police.co_06@phila.gov'}, 
  {:name => '9th District',     :area => 'Central',   :email => 'police.co_09@phila.gov'}, 
  {:name => '22nd District',    :area => 'Central',   :email => 'police.co_22@phila.gov'},
  {:name => '19th District',    :area => 'Southwest', :email => 'police.co_19@phila.gov'},
  {:name => '18th District',    :area => 'Southwest', :email => 'police.co_18@phila.gov'},
  {:name => '16th District',    :area => 'Southwest', :email => 'police.co_16@phila.gov'},
  {:name => '12th District',    :area => 'Southwest', :email => 'police.co_12@phila.gov'},
  {:name => '1st District',     :area => 'South',     :email => 'police.co_01@phila.gov'},
  {:name => '3rd District',     :area => 'South',     :email => 'police.co_03@phila.gov'},
  {:name => '17th District',    :area => 'South',     :email => 'police.co_17@phila.gov'}
  ])
