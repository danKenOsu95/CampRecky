class AddThemeColumnToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :theme, :string
  end
end
