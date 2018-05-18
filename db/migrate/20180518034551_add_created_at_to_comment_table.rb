class AddCreatedAtToCommentTable < ActiveRecord::Migration[5.1]
  def change

    add_column :comments , :created_at , :datetime


  end
end
