class Album < ActiveRecord::Base
  mount_uploader :photo_image, PhotoImageUploader
  belongs_to :user
  has_many :photos
end
