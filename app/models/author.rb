class Author < ActiveRecord::Base 
    belongs_to :users
    has_many :books 
    has_many :genres, through: :books 
    accepts_nested_attributes_for :genres
    
end