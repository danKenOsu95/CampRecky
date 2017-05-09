class ChangeCamperList < ActiveRecord::Migration
  def change
    # did this because the default '[]--' looked bad on the form and I don't think more than a string is needed
    change_column :campers, :authguardians, :string
    change_column :campers, :prohibited, :string



  end
end
