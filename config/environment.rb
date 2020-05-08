require "bundler"
Bundler.require
require 'sinatra/json'

ActiveRecord::Base.establish_connection(
    #:adapter => "sqlite3"
    #:database => "db/book_development.sqlite"
)

require_all "app"