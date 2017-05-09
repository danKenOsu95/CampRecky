class AddSessionColumns < ActiveRecord::Migration
  def change
   add_column :camps, :morning_session, :boolean
   add_column :camps, :afternoon_session, :boolean
  end
end
