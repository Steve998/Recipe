class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredient
      t.text :steps
      t.integer :user_id
      t.string :image
      t.string :url

      t.timestamps null: false
    end
  end
end
