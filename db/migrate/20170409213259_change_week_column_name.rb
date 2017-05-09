class ChangeWeekColumnName < ActiveRecord::Migration
  def change
     rename_column :weeks, :theme_key, :key
  end
end
