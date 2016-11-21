class AddConcert < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
     t.string :title
     t.string :description
     t.string :address
     t.integer :number_places #nommbre de place
     t.string :comment #commentaire des utilisateurs 
     t.datetime :date #date du concert
     t.timestamps
   end

  end
end
