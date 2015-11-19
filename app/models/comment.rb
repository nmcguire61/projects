class Comment < ActiveRecord::Base
  belongs_to :photo

  acts_as_tree order: 'created_at DESC', dependent: :destroy

end