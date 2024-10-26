# frozen_string_literal: true

module Mutations
  class RecipeDelete < BaseMutation
    description "Deletes a recipe by ID"

    field :recipe, Types::RecipeType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      recipe = ::Recipe.find(id)
      raise GraphQL::ExecutionError.new "Error deleting recipe", extensions: recipe.errors.to_hash unless recipe.destroy!

      { recipe: recipe }
    end
  end
end
