class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :camp
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
