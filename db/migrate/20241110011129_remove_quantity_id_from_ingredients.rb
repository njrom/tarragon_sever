class RemoveQuantityIdFromIngredients < ActiveRecord::Migration[7.2]
  def change
    remove_column :quantities, :ingredient_id
  end
end
