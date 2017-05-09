class RemoveColumnnHasThemeFromCamps < ActiveRecord::Migration
  def change
    remove_column :camps, :has_theme, :boolean
  end
end
