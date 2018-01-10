class ChangeRooms < ActiveRecord::Migration[5.1]
  def change
  	rename_column(:rooms, :owner_id, :user_id)
  end
end
