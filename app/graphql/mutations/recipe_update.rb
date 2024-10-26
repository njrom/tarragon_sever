# frozen_string_literal: true

module Mutations
  class RecipeUpdate < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :recipe, Types::RecipeInputType, required: true

    field :recipe, Types::RecipeType, null: true
    field :errors, [String], null: true

    def resolve(id:, recipe:)
      existing_recipe = Recipe.find_by(id: id)
      return { recipe: nil, errors: ["Recipe not found"] } unless existing_recipe

      recipe_data = recipe.to_h
      ingredients_data = recipe_data.delete(:ingredients)

      if existing_recipe.update(recipe_data)
        existing_recipe.ingredients.destroy_all
        existing_recipe.ingredients_attributes = ingredients_data

        if existing_recipe.save
          { recipe: existing_recipe, errors: [] }
        else
          { recipe: nil, errors: existing_recipe.errors.full_messages }
        end
      else
        { recipe: nil, errors: existing_recipe.errors.full_messages }
      end
    end
  end
end
