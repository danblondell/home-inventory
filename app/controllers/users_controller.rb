class UsersController < ApplicationController


	get '/signup' do
		erb :'/users/create_user'
	end

	post '/signup' do
		redirect "/users/signup" if User.find_by(username: params[:username]) || User.find_by(email: params[:email])
		@user = User.new(username: params[:username], first_name: params[:first_name], email: params[:email], password: params[:password])
		
		if @user.save
			session[:user_id] = @user.id
			redirect "/rooms"
		else
			redirect "/signup"
		end
	end

	get '/login' do
		redirect "/rooms" if logged_in?
		erb :'/users/login'
	end

	post '/login' do
		@user = User.find_by(username: params[:username])

		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect "/rooms"
		else
			redirect "/login"
		end
	end


end