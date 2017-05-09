class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :camp
      t.belongs_to :camper
      t.boolean :enrolled

      t.timestamps null: false
    end
  end
end
