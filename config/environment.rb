ENV['SINATRA_ENV'] ||= "development"

require "bundler"
Bundler.require
require 'sinatra/json'

ActiveRecord::Base.establish_connection(
    ENV['SINATRA_ENV'].to_sym,
    #adapter: 'sqlite3',
    #database: 'db/development.sqlite'
)

require_all "app"