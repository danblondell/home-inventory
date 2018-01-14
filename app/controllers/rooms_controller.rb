class RoomsController < ApplicationController

	get '/rooms' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user

		erb :'/rooms/index'
	end

	get '/rooms/new' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user
		erb :'/rooms/create_room'
	end

	post '/rooms/new' do
		if room = current_user.rooms.find_by(name: params[:room][:name])
			redirect "/rooms/#{room.id}"
		end

		room = Room.new(params[:room])
		current_user.rooms << room

		room.save

		redirect "/rooms/#{room.id}"
	end

	get '/rooms/:id' do
		redirect_to_login_page_if_not_logged_in
		assign_room_variable
		redirect_if_room_doesnt_belong_to_user

		@user = current_user

		erb :'/rooms/show'
	end

	get '/rooms/:id/edit' do
		redirect_to_login_page_if_not_logged_in
		assign_room_variable
		redirect_if_room_doesnt_belong_to_user

		erb :'/rooms/edit'
	end

	patch '/rooms/:id/edit' do
		redirect_to_login_page_if_not_logged_in
		assign_room_variable
		redirect_if_room_doesnt_belong_to_user

		@room.update(params[:room])

		redirect "/rooms/#{@room.id}"
	end

	get '/rooms/:id/delete' do
		redirect_to_login_page_if_not_logged_in
		assign_room_variable
		redirect_if_room_doesnt_belong_to_user
		

		erb :'/rooms/delete'
	end

	delete '/rooms/:id/delete' do
		redirect_to_login_page_if_not_logged_in
		assign_room_variable
		redirect_if_room_doesnt_belong_to_user

		unassigned_items = current_user.rooms.find_or_create_by(name: "Unassigned Items")

		unassigned_items.items << @room.items

		@room.delete
		redirect to '/rooms'
  	end
end