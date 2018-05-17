class CreateSpanTable < ActiveRecord::Migration[5.1]
  def change
    create_table :span_tables do |t|
      t.string :lecture_id
    end
  end
end
