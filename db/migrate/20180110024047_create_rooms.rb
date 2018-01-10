class CreateRooms < ActiveRecord::Migration[5.1]
  def change
  	create_table :rooms do |t|
  		t.string :name
  		t.text :notes
  		t.integer :owner_id
  	end
  end
end
