class MakeLatLngFloats < ActiveRecord::Migration
  def self.up
    change_column :tips, :lat, :float
    change_column :tips, :lng, :float
  end

  def self.down
    raise "No Reserves. No Retreats. No Regrets."
    change_column :tips, :lat, :string
    change_column :tips, :lng, :string
  end
end
