class AddDefaultToAuthors < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :author, :boolean, :default => false
  end
end
