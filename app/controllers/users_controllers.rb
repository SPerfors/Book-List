class UsersController < ApplicationController

    get "/signup" do 
        if logged_in?
            redirect "/repository"
        else 
            erb :"/users/new_user"
        end
    end

    post "/signup" do 
        user = User.new(username: params[:username], password: params[:password], email: params[:email])

        if user[:username].empty? || user[:password_digest] == nil || user[:email].empty?
            redirect "/signup"
        else
            user.save
            session[:user_id] = user.id 
            redirect "/repository"
        end
    end

    get "/login" do 
        if logged_in?
            redirect "/repository"
        else 
            erb :"/users/login"
        end
    end

    post "/login" do 
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect "/repository"
        else 
            erb :"/users/login"
        end
    end
    



end
