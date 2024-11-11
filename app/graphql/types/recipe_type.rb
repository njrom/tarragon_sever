# frozen_string_literal: true

module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :servings, Int, null: false
    field :ingredients, [Types::IngredientType], null: true
  end
end
