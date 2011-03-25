class Attachment < ActiveRecord::Base
  has_attached_file :item
  belongs_to :tip
end
