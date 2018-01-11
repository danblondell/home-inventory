require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "drily-slew-barberry-plea"
  end

  get '/' do
    @is_index = true
  	erb :index
  end

  helpers do
  	def logged_in?
  		!!session[:user_id]
  	end

  	def current_user
  		User.find_by_id(session[:user_id])
  	end


  	def redirect_to_login_page_if_not_logged_in
  		redirect "/login" if !logged_in?
  	end
  end

end