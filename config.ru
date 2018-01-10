require './config/environment'

# Do I need this?
# use Rack::MethodOverride

use UsersController
use RoomsController
use ItemsController
run ApplicationController