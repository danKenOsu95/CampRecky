class AddHasThemes < ActiveRecord::Migration
  def change
	add_column :camps, :has_theme, :boolean
  end
end
