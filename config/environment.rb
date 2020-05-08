require "bundler"
Bundler.require
require 'sinatra/json'

ActiveRecord::Base.establish_connection(
    
)

require_all "app"