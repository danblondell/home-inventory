class ItemsController < ApplicationController

	get '/items' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user

		erb :'/items/index'
	end

	get '/items/new' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user
		erb :'/items/create_item'
	end

	post '/items/new' do
		binding.pry
		# if item = current_user.items.find_by(name: params[:item][:name])
		# 	redirect "/items/#{item.id}"
		# end

		# item = Room.new(params[:item])
		# current_user.items << item

		# item.save

		redirect "/items/#{item.id}"
	end

end