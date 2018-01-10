require './config/environment'

# Do I need this?
# use Rack::MethodOverride


# Add use UsersController and other controllers here
use UsersController
use RoomsController
use ItemsController
run ApplicationController