class AddKidLimitToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :kid_limit, :integer
  end
end
