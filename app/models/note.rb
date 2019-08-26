class Note < ApplicationRecord
  belongs_to :user
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "",
  :storage => :s3,:s3_credentials => {
    :bucket => ENV['BUCKET_NAME'],
    :access_key_id => ENV['ACCESS_KEY_ID'],
    :secret_access_key => ENV['SECRET_ACCESS_KEY'],
      s3_region: ENV.['AWS_REGION']
  },
                    :bucket => "akirachixnotesapi"
  #validates_attachment :picture, presence: true
  do_not_validate_attachment_file_type :picture
end
