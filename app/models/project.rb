class Project < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
