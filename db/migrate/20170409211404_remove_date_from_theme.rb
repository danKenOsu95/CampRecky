class RemoveDateFromTheme < ActiveRecord::Migration
  def change
   remove_column :themes, :start_date
   remove_column :themes, :end_date
  end
end
