class RoomsController < ApplicationController

	get '/rooms' do
		erb :'/rooms/index'
	end

	get '/rooms/new' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user
		erb :'/rooms/create_room'
	end

	post '/rooms/new' do
		binding.pry

		# if room = Room.find_by(name: params[:name])
		# 	redirect "/rooms/#{room.id}"
		# end

		room = Room.create(name: params[:name])

		if !params[:notes].empty?
			room.notes = params[:notes]
		end

		current_user.rooms << room
		room.save

		redirect "/rooms/#{room.id}"
	end

	get '/rooms/:id' do
		redirect_to_login_page_if_not_logged_in

		@room = Room.find_by_id(params[:id])
		@user = current_user

		erb :'/rooms/show'
	end
end