class ChangeItemCostToInteger < ActiveRecord::Migration[5.1]
  def change
	def change
		change_column(:items, :cost, :integer)
	end
  end
end
