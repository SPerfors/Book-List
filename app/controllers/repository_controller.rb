class BooksController < ApplicationController

    get "/repository" do 
        @user = current_user
        erb :"/repository/repository"
    end

    get "/repository/new" do 
        @user = current_user
        erb :"/repository/new"
    end


end
