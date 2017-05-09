class ChangeWeekDate < ActiveRecord::Migration
  def change
    change_column :weeks, :start_date, :date
    change_column :weeks, :end_date, :date
  end
end
