class Album < ActiveRecord::Base

  # IMAGE_SIZES = {
  #   # :thumb => [200, 200],
  #   :medium => [800, 800],
  # }
  
  # mount_uploader :photo_image, PhotoImageUploader
  belongs_to :user
  has_many :photos
end
