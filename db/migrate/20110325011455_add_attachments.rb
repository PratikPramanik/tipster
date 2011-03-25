class AddAttachments < ActiveRecord::Migration
  def self.up
    create_table(:attachments) do |t|
      t.string :item_file_name
      t.string :item_content_type
      t.integer :item_file_size
      t.datetime :item_updated_at
      
      t.references :tip
    end
  end

  def self.down
    drop_table :attachments
  end
end
