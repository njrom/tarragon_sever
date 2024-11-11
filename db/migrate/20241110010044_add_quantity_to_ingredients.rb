class AddQuantityToIngredients < ActiveRecord::Migration[7.2]
  def change
    add_reference :ingredients, :quantity, null: true, foreign_key: true
  end
end
