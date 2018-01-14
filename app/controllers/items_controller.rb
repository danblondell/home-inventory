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
		if item = current_user.items.find_by(name: params[:item][:name])
			redirect "/items/#{item.id}"
		end

		item = Item.create(params[:item])

		redirect "/items/#{item.id}"
	end

	get '/items/:id' do
		redirect_to_login_page_if_not_logged_in
		assign_item_variable
		redirect_if_item_doesnt_belong_to_user

		erb :'/items/show'
	end

	get '/items/:id/edit' do
		redirect_to_login_page_if_not_logged_in
		assign_item_variable
		redirect_if_item_doesnt_belong_to_user

		@user = current_user

		erb :'/items/edit'
	end

	patch '/items/:id/edit' do
		redirect_to_login_page_if_not_logged_in
		assign_item_variable
		redirect_if_item_doesnt_belong_to_user

		@item.update(params[:item])

		redirect "/items/#{@item.id}"
	end

	get '/items/:id/delete' do
		redirect_to_login_page_if_not_logged_in
		assign_item_variable
		redirect_if_item_doesnt_belong_to_user

		erb :'/items/delete'
	end

	delete '/items/:id/delete' do
		redirect_to_login_page_if_not_logged_in
		assign_item_variable
		redirect_if_item_doesnt_belong_to_user

		room = @item.room

		@item.delete
		redirect to "/rooms/#{room.id}"
  	end

end