class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :theme_key
      t.string :start_date
      t.string :string
      t.string :end_date
      t.string :string

      t.timestamps null: false
    end
  end
end
