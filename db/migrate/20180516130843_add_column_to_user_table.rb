class AddColumnToUserTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :gender
    add_column :users , :gender, :integer , default: 0

  end
end
