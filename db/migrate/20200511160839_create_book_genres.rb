class CreateBookGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :book_genres do |x|
      x.integer :book_id 
      x.integer :genre_id 
    end
  end
end
