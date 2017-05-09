class ChangeCamperPhoneToString < ActiveRecord::Migration
  def change
    # did this because the default '[]--' looked bad on the form and I don't think more than a string is needed
    change_column :campers, :wcphone , :string
    change_column :campers, :homephone, :string

  end
end
