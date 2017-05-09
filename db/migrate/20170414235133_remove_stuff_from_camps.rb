class RemoveStuffFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :morning_session , :boolean
    remove_column :camps, :afternoon_session , :boolean
  end
end
