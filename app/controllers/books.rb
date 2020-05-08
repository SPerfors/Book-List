class BooksController < ApplicationController

    get "/repository" do 
        erb :"/books/repository"
    end

end
