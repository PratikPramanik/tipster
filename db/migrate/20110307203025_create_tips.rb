class CreateTips < ActiveRecord::Migration
  def self.up
    create_table :tips do |t|
      t.integer :district_id
      t.string :subject
      t.string :address
      t.text :tip
      t.boolean :contact, :default => false
      t.string :lat
      t.string :lng
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.timestamps
    end
  end

  def self.down
    drop_table :tips
  end
end
