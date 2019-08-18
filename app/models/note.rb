class Note < ApplicationRecord
  has_many :comments
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: ""
  #validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture
end
