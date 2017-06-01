class RemoveOccasionFromPoems < ActiveRecord::Migration[5.0]
  def change
  	remove_column :poems, :occasion, :string
  end
end
