class ChangeCampThemeWeekTables < ActiveRecord::Migration
  def change
   remove_column :weeks, :string
   add_column :themes, :week_key, :integer
   add_column :camps, :theme_key, :integer
   remove_column :themes, :camp
   remove_column :weeks, :key
  end
end
