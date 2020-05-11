class AddDropNameAuthors < ActiveRecord::Migration[5.2]
  def up
    remove_column :authors, :first_name
    remove_column :authors, :last_name 
  end

  def down
    add_column :authors, :name, :string
  end
end
