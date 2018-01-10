class RoomsController < ApplicationController

	get '/rooms' do
		erb :'/rooms/index'
	end

end