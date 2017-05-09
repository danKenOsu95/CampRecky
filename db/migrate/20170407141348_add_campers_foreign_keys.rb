class AddCampersForeignKeys < ActiveRecord::Migration
  def change
    add_column :camps, :enrolled_camper_id, :integer, index: true
    add_column :camps, :waitListed_camper_id, :integer, index: true

    add_column :campers, :enrolled_camp_id, :integer, index: true
    add_column :campers, :waitListed_camp_id, :integer, index: true
  end
end
