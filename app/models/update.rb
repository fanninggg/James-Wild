class Update < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_rich_text :content
end
