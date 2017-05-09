class RemoveGfname < ActiveRecord::Migration
  def change
    remove_column :campers, :gfname

    rename_column :campers, :glname, :gfullname
  end
end
