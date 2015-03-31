class AddCommentIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :comment_id, :integer
    add_column :recipes, :meal_id, :integer
  end
end
