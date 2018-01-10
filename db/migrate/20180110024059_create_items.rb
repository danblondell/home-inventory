class CreateItems < ActiveRecord::Migration[5.1]
  def change
  	create_table :items do |t|
  		t.string :name
  		t.string :brand
  		t.date :date_purchased
  		t.decimal :cost
  		t.string :source_of_purchase
  		t.string :category
  		t.text :note
  		t.integer :room_id
  	end
  end
end
