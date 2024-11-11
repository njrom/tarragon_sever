class AddServingsToRecipe < ActiveRecord::Migration[7.2]
  def change
    add_column :recipes, :servings, :int
  end
end
