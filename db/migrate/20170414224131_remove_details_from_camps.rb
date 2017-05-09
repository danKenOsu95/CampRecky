class RemoveDetailsFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :theme, :string
    remove_column :camps, :theme_key, :integer
    remove_column :camps, :member_fee, :integer
    remove_column :camps, :non_member_fee, :integer
    remove_column :camps, :two_week, :boolean
    remove_column :camps, :lunch_fee, :boolean
  end
end
