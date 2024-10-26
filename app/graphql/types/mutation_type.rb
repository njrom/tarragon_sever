# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :recipe_delete, mutation: Mutations::RecipeDelete
    field :recipe_update, mutation: Mutations::RecipeUpdate
    field :recipe_create, mutation: Mutations::RecipeCreate
  end
end
