class RemoveKeyColumns < ActiveRecord::Migration
  def change
   remove_columns :weeks, :key
   remove_columns :themes, :string
  end
end
