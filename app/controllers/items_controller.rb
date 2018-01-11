class ItemsController < ApplicationController

	get '/items' do
		redirect_to_login_page_if_not_logged_in

		@user = current_user

		erb :'/items/index'
	end

end