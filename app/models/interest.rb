class Interest < ActiveRecord::Base
    mount_uploader :photo, S3Uploader
    belongs_to :user
end
