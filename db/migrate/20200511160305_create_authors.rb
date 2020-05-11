class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |x|
      x.string :first_name 
      x.string :last_name 
    end
  end
end
