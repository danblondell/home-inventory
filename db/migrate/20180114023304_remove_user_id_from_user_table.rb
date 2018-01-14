class RemoveUserIdFromUserTable < ActiveRecord::Migration[5.1]
  def change
  	remove_column(:items, :user_id)
  end
end
