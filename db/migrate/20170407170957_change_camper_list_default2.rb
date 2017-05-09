class ChangeCamperListDefault2 < ActiveRecord::Migration
  def change
    change_column_default(:campers, :authguardians, nil)
    change_column_default(:campers, :prohibited, nil)
  end
end
