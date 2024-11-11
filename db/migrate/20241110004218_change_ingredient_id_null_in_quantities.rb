class ChangeIngredientIdNullInQuantities < ActiveRecord::Migration[7.2]
  def change
    change_column_null :quantities, :ingredient_id, true
  end
end
