class BooksController < ApplicationController

    get "/repository" do 
        @user = current_user
        erb :"/repository/repository"
    end

    get "/repository/new" do 
        @user = current_user
        erb :"/repository/new"
    end

    post "/repository" do 
        @author = Author.new(params[:author])

        @author.save
        redirect "authors/#{@author.id}"
    end
    


end
