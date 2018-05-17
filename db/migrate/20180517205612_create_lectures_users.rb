class CreateLecturesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures_users do |t|
      t.integer :user_id
      t.integer :lecture_id
    end
  end
end
