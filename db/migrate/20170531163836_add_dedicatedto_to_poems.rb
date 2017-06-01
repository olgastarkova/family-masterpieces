class AddDedicatedtoToPoems < ActiveRecord::Migration[5.0]
  def change
  	 add_column :poems, :dedicated_to, :string
  end
end
