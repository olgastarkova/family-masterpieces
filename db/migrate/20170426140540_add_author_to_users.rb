class AddAuthorToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :author, :boolean
  end
end
