require './config/environment'

run ApplicationController
use UsersController
use BooksController
use Rack::MethodOverride
use AuthorsController

