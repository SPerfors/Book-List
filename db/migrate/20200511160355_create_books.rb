class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |x|
      x.string :title 
      x.integer :author_id 
    end
  end
end
