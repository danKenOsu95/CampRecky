class AddDetailsToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :description, :string
    add_column :camps, :fee, :integer
    add_column :camps, :week_id, :integer
  end
end
