class RenameCoordsToShape < ActiveRecord::Migration
  def self.up
    rename_column :districts, :coords, :shape
  end

  def self.down
    rename_column :districts, :shape, :coords
  end
end
