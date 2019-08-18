class Note < ApplicationRecord
  belongs_to :user
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "",
  :storage => :s3,:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :bucket => "akirachixnotesapi"
  #validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture
end
