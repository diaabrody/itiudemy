class ChangeColumnNameUsersTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :photo
    add_column :users, :avatar, :string
  end
end
