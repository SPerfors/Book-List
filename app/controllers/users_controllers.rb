class UsersController < ApplicationController

    get '/signup' do 
        if logged_in?
            redirect '/repository'
        else 
            erb :'/users/new_user'
        end
    end

end
