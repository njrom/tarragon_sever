# frozen_string_literal: true

module Mutations
  class RecipeCreate < BaseMutation
    description "Creates a new recipe"

    argument :recipe, Types::RecipeInputType, required: true
    
    field :recipe, Types::RecipeType, null: false
    field :errors, [String], null: true
    
    def resolve(recipe:)
      recipe_data = recipe.to_h
      ingredients_data = recipe_data.delete(:ingredients)

      new_recipe = Recipe.new(recipe_data)
      new_recipe.ingredients_attributes = ingredients_data

      if new_recipe.save
        { recipe: new_recipe, errors: [] }
      else
        { recipe: nil, errors: new_recipe.errors.full_messages }
      end
    end
  end
end
