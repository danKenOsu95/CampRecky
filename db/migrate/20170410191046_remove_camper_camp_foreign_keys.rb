class RemoveCamperCampForeignKeys < ActiveRecord::Migration
  def change
    remove_columns :camps, :enrolled_camper_id
    remove_columns :camps, :waitListed_camper_id
    remove_columns :campers, :enrolled_camp_id
    remove_columns :campers, :waitListed_camp_id
  end
end