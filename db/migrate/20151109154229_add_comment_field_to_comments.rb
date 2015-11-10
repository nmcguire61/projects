class AddCommentFieldToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_field, :string
  end
end
