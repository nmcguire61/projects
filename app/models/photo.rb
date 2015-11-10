class Photo < ActiveRecord::Base
  mount_uploader :photo_image, PhotoImageUploader
  belongs_to :album
  #belongs_to :user, through: :album
  #has_many :comments
end