class Author < ActiveRecord::Base 
    belongs_to :users
    has_many :books 
    has_many :genres, through: :books 
    
end