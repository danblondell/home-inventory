class UsersController < ApplicationController


	get '/users/signup' do
		erb :'/users/signup'
	end

	post '/users' do
		@user = User.new(username: params[:username], first_name: params[:first_name], email: params[:email], password: params[:password])
		
		
	end

	get '/users/login' do
		erb :'/users/login'
	end


end