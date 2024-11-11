class PopulateQuantitiesForIngredients < ActiveRecord::Migration[7.2]
  def up
    Ingredient.find_each do |ingredient|
      # Only create a quantity if one doesn't already exist
      if ingredient.quantity.nil?
        ingredient.create_quantity!(amount: 1, unit: 'unit')  # Adjust the default as necessary
      end
    end
  end
end
