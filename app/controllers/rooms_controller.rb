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

		@user = current_user
		@room = @user.rooms.find_by_id(params[:id])

		erb :'/rooms/show'
	end

	get '/rooms/:id/delete' do
		@room = current_user.rooms.find_by_id(params[:id])
		erb :'/rooms/delete'
	end
end