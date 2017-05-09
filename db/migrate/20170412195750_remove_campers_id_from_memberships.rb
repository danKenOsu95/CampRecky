class RemoveCampersIdFromMemberships < ActiveRecord::Migration
  def change
    remove_column :memberships, :campers_id, :integer
  end
end
