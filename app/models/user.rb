class User < ActiveRecord::Base 
    has_secure_password
    has_many :authors
    has_many :books
    has_many :genres, through: :books 
end
