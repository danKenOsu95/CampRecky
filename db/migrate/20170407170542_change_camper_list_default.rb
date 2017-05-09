class ChangeCamperListDefault < ActiveRecord::Migration
  def change
    change_column_default(:campers, :authguardians, from: '--- []\n', to: false)
    change_column_default(:campers, :prohibited, from: '--- []\n', to: false)
  end
end
