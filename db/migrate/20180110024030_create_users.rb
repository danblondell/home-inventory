class CreateUsers < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :email
  		t.string :first_name
  		t.string :password_digest
  	end
  end
end