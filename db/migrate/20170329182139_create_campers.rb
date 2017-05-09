class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string :fullname
      t.boolean :gender #boolean?
      t.date :birthday
      t.integer :grade

      #contact info + emergency contact, linked table?
      t.string :glname #guardian last name
      t.string :gfname
      t.date :gbirthday
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :homephone
      t.integer :wcphone  #work/cell
      t.string :email
      
      #guardians authorized to pick up at end of day
      t.string :authguardians, array: true, default: []

      #person(s) prohibied from picking up at end of day
      t.string :prohibited, array: true, default: []
      
      #medical form has been completed
      t.boolean :medicalcompleted
      
      #payment method?
      #t.string :payment
      
      t.timestamp
    end
  end
end
