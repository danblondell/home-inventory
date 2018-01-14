class Item < ActiveRecord::Base
	belongs_to :room

	validates_presence_of :name, :category
end