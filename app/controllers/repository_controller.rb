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

        if !params[:author][:name].empty?
            @author.authors.build(name: params[:author][:name])
        end

        if !params[:book][:title].empty?
            @author.books.build(title: params[:book][:title])
        end

        @author.save
        redirect "/repository"
    end



end
