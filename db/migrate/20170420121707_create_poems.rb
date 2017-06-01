class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :content
      t.date :year
      t.references :user, foreign_key: true
      t.string :occasion
      t.string :cover
      t.string :original

      t.timestamps
    end
  end
end
