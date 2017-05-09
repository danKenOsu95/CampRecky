class AddThemeToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :theme, :string
  end
end
