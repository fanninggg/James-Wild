class Photo < ApplicationRecord
  belongs_to :project
  mount_uploader :url, PhotoUploader
end
