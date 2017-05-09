class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :name
      t.string :theme
      t.string :location
      t.integer :age_min
      t.integer :age_max
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :ext_end_time
      t.datetime :ext_start_time
      t.integer :member_fee
      t.integer :non_member_fee
      t.boolean :two_week
      t.boolean :lunch_fee

      t.timestamps null: false
    end
  end
end
