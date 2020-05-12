class BooksController < ApplicationController

    get "/repository" do 
        @user = current_user
        erb :"/repository/repository"
    end

end
