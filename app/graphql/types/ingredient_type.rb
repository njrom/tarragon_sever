# frozen_string_literal: true

module Types
  class IngredientType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :amount, Float, null: false
    field :unit, String, null: false
  end
end
