class CreateDistricts < ActiveRecord::Migration
  def self.up
    create_table :districts do |t|
      t.string :name
      t.string :area
      t.string :email
      t.text :coords
      t.timestamps
    end
  end

  def self.down
    drop_table :districts
  end
end
