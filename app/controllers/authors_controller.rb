class AuthorsController < ApplicationController 

    get "/authors" do 
        @authors = Author.all 
        @user = current_user
        erb :"/authors/index"
    end
    
end
