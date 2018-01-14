require './config/environment'

use Rack::MethodOverride
use UsersController
use RoomsController
use ItemsController
run ApplicationController