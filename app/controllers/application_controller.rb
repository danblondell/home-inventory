require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "drily-slew-barberry-plea"
  end

  use Rack::Flash

  get '/' do
    redirect to "/rooms" if logged_in?
    @is_index = true
  	erb :index
  end

  helpers do
  	def logged_in?
  		if !!session[:user_id]
        @logged_in = true
        !!session[:user_id]
      else
        false
      end
  	end

  	def current_user
  		User.find_by_id(session[:user_id])
  	end

  	def redirect_to_login_page_if_not_logged_in
      flash[:message] = "Looks like you're not logged in. Please log in first." if !logged_in?
  		redirect "/login" if !logged_in?
  	end

    def assign_room_variable
      @room = current_user.rooms.find_by_id(params[:id])
    end

    def redirect_if_room_doesnt_belong_to_user
      flash[:message] = "Are you trying to go into other people's rooms?" if @room == nil
      redirect '/rooms' if @room == nil
    end

    def assign_item_variable
      @item = current_user.items.find_by_id(params[:id])
    end

    def redirect_if_item_doesnt_belong_to_user
      flash[:message] = "Are you trying to look at other people's things?" if @item == nil
      redirect '/rooms' if @item == nil
    end

    def not_a_date
      flash[:message] = "Your date needs to look like this yyyy-mm-dd (e.g. 2018-01-31) or just don't fill in a date."
      redirect '/items/new'
    end

    def not_a_date_edit
      flash[:message] = "Your date needs to look like this yyyy-mm-dd (e.g. 2018-01-31) or just don't fill in a date."
      redirect "/items/#{@item.id}/edit"
    end
  end

end