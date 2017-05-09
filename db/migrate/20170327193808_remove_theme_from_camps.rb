class RemoveThemeFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :theme

    change_column :camps, :ext_end_time, :time
    change_column :camps, :ext_start_time, :time
    change_column :camps, :end_time, :time
    change_column :camps, :start_time, :time



  end
end
