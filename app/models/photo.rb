class Photo < ActiveRecord::Base
  IMAGE_SIZES = {
    :thumb => [200, 200],
    :medium => [800, 800],
  }

  mount_uploader :photo_image, PhotoImageUploader
  belongs_to :album
  #belongs_to :user, through: :album
  #has_many :comments
end