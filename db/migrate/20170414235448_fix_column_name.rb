class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :campers, :grade, :age
  end
end
