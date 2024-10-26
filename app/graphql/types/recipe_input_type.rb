# frozen_string_literal: true

module Types
  class RecipeInputType < Types::BaseInputObject
    argument :name, String, required: true
    argument :description, String, required: false
    argument :ingredients, [Types::IngredientInputType], required: true
  end
end

