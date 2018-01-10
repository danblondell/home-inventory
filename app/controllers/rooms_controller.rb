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
	end

end